package com.alien.controller;

import com.alien.pojo.User;
import com.alien.service.UserService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
@RequestMapping("/user")
public class UserController implements AccountSession{

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;


    @RequestMapping("/userlogin")
    public String userLogin(User user, HttpServletRequest request) {

        // 有登入session不能再登入
        if (haveAccountSession(request)) {
            return "redirect:/";
        }
        // 驗證帳號密碼
        String account = userService.login(user);
        //把帳號寫入session
        if (account != null) {
            request.getSession().setAttribute("account",account);
            return "redirect:/";
        } else {
            return "login";
        }

    }

    @Transactional
    @RequestMapping("/usersignup")
    public String usersignup(User user, HttpServletRequest request, Model model) {
        //登入後不能註冊
        if (haveAccountSession(request)) {
            return "redirect:/";
        }
        if (userService.queryAccount(user.getAccount()) != null) {

            model.addAttribute("msg", "這個帳戶已有人使用");
            return "signup";
        }
        userService.signUp(user);
        request.getSession().setAttribute("account",user.getAccount());


        return "redirect:/";
    }


    @RequestMapping("/logout")
    public String logout(User user, HttpServletRequest request) {
        //沒登入不能登出
        if (!haveAccountSession(request)) {
            return "redirect:/";
        }
        //清除帳號session
        request.getSession().setAttribute("account",null);
        return "redirect:/user/login";

    }


    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        //登入後不能進入登入頁面
        if (haveAccountSession(request)) {
            return "redirect:/";
        }
        return "login";
    }

    @RequestMapping("/signup")
    public String signup(HttpServletRequest request) {
        //登入後不能註冊
        if (haveAccountSession(request)) {
            return "redirect:/";
        }

        return "signup";
    }

    @RequestMapping("/password")
    public String password(HttpServletRequest request) {
        //沒登入不能更改密碼
        if (!haveAccountSession(request)) {
            return "redirect:/";
        }

        return "password";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(Model model,HttpServletRequest request, User user, String passwordNew, String passwordNewCheck) {
        //沒登入不能更改密碼
        if (!haveAccountSession(request)) {
            return "redirect:/";
        }
        String account =(String) request.getSession().getAttribute("account");
        user.setAccount(account);
        account = userService.login(user);
        if (!passwordNewCheck.equals(passwordNew)) {
            model.addAttribute("msg", "輸入的密碼不同");
            return "password";
        } else if (account == null){
            model.addAttribute("msg", "密碼錯誤");
            return "password";
        } else {
            user.setPassword(passwordNew);
            userService.updatePassword(user);
            model.addAttribute("msg", "更改密碼成功");
            return "password";
        }

    }

    @Override
    public boolean haveAccountSession(HttpServletRequest request) {
        if (request.getSession().getAttribute("account") == null) {
            return false;
        }
        return true;
    }

}
