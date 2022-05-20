package com.alien.controller;

import com.alien.pojo.Cart;
import com.alien.pojo.Product;
import com.alien.pojo.User;
import com.alien.service.CartService;
import com.alien.service.UserService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.List;


@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @Autowired
    @Qualifier("CartServiceImpl")
    private CartService cartService;

    private AccountSession accountSession = new AccountSession();

    //登入
    @RequestMapping("/userLogin")
    public String userLogin(User user, HttpServletRequest request, Model model) {

        // 有登入session不能再登入
        if (accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }
        // 驗證帳號密碼
        String account = userService.login(user);
        //把帳號寫入session
        if (account != null) {
            Enumeration attributeNames = request.getSession().getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                request.getSession().removeAttribute(attributeNames.nextElement().toString());
            }
            int cartsSize = cartService.queryCartSize(account);
            accountSession.setCartSize(request,cartsSize);
            accountSession.setAccount(request,user.getAccount());
            return "redirect:/";
        } else {
            model.addAttribute("accountPasswordError", "帳號或密碼錯誤");
            return "login";
        }

    }

    //註冊
    @Transactional
    @RequestMapping("/userSignup")
    public String usersignup(User user, HttpServletRequest request, Model model) {
        //登入後不能註冊
        if (accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }

        if (!user.getAccount().matches("[a-zA-Z0-9]+") || user.getAccount().length()>16) {
            model.addAttribute("accountError", "帳號格式不正確");
            return "signup";
        } else if (!user.getPassword().matches("[a-zA-Z0-9]+") || user.getPassword().length()>16) {
            model.addAttribute("passwordError", "密碼格式不正確");
            return "signup";
        } else if (userService.queryAccount(user.getAccount()) != null) {
            model.addAttribute("accountError", "這個帳戶已有人使用");
            return "signup";
        }
        userService.signUp(user);
        Enumeration attributeNames = request.getSession().getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            request.getSession().removeAttribute(attributeNames.nextElement().toString());
        }
        accountSession.setAccount(request,user.getAccount());

        return "redirect:/";
    }


    //登出
    @RequestMapping("/logout")
    public String logout(User user, HttpServletRequest request) {
        //沒登入不能登出
        if (!accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }
        //清除帳號session
        request.getSession().invalidate();
        return "redirect:/user/login";

    }

    //登入頁面
    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        //登入後不能進入登入頁面
        if (accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }
        return "login";
    }

    //註冊頁面
    @RequestMapping("/signup")
    public String signup(HttpServletRequest request) {
        //登入後不能註冊
        if (accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }

        return "signup";
    }

    //更改密碼頁面
    @RequestMapping("/password")
    public String password(HttpServletRequest request) {
        //沒登入不能更改密碼
        if (!accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }

        return "password";
    }

    //更改密碼
    @RequestMapping("/updatePassword")
    public String updatePassword(Model model,HttpServletRequest request, User user, String passwordNew, String passwordNewCheck) {
        //沒登入不能更改密碼
        if (!accountSession.haveAccountSession(request)) {
            return "redirect:/";
        }
        String account = accountSession.getAccount(request);
        user.setAccount(account);
        account = userService.login(user);
        if (account == null){
            model.addAttribute("passwordError", "密碼錯誤");
            return "password";
        } else if (!passwordNew.matches("[a-zA-Z0-9]+") || passwordNew.length()>16) {
            model.addAttribute("passwordNewError", "密碼格式不正確");
            return "password";
        } else if (!passwordNewCheck.equals(passwordNew)) {
            model.addAttribute("passwordNewCheckError", "輸入的密碼不相同");
            return "password";
        } else {
            user.setPassword(passwordNew);
            userService.updatePassword(user);
            model.addAttribute("successUpdatePassword", "更改密碼成功");
            return "password";
        }

    }

    //購買清單
    @RequestMapping("/purchase/{page}")
    public String purchase(HttpServletRequest request, Model model, @PathVariable("page") int page) {

        if (page < 0) {
            return "redirect:/notFound";
        }

        String account = accountSession.getAccount(request);
        List<Cart> carts = cartService.queryPurchase(account, page*5);


        if (page >= 0 && page < 1) {
            model.addAttribute("pageCategory", "page==0");
        } else if (page >= 1 && page < 5)
            model.addAttribute("pageCategory", "page1~4");
        else {
            model.addAttribute("pageCategory", "page>=5");
        }

        if (carts.size() >15) {
            carts = carts.subList(0,5);
            model.addAttribute("pageRemain", "3");
        } else if (carts.size() <= 15 && carts.size() > 10) {
            carts = carts.subList(0,5);
            model.addAttribute("pageRemain", "2");
        } else if (carts.size() <= 10 && carts.size() > 5) {
            carts = carts.subList(0,5);
            model.addAttribute("pageRemain", "1");
        } else {
            model.addAttribute("pageRemain", "0");
        }

        model.addAttribute("carts" ,carts);
        return "purchase";
    }


}
