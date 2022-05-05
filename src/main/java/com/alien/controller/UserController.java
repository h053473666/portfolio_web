package com.alien.controller;

import com.alien.pojo.User;
import com.alien.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;


    @RequestMapping("/userlogin")
    public String userLogin(User user, HttpServletRequest request) {

        String account = userService.login(user);
        if (account != null) {
            request.getSession().setAttribute("account",account);
            return "redirect:/";
        } else {
            return "login";
        }

    }

    @RequestMapping("/logout")
    public String logout(User user, HttpServletRequest request) {
        if (request.getSession().getAttribute("account") == null) {
            return "redirect:/";
        }

        request.getSession().setAttribute("account",null);
        return "login";

    }


    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        if (request.getSession().getAttribute("account") != null) {
            return "redirect:/";
        }
        return "login";
    }

    @RequestMapping("/signup")
    public String signup() {
        return "signup";
    }
}
