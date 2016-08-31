package com.Music.Controller;

import com.Music.DAOInterface.LoginInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * Created by luohao on 2016/8/29.
 */
@Controller
public class LoginController {

    @Autowired
    LoginInterface login;

    @RequestMapping(value = "Login")
    public String index() {
        return "login";
    }

    @RequestMapping(value = "ActionLogin")
    public String actionLogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        if(login.findUser(username, password)) {
            session.setAttribute("User",true);
            return "index";
        }
        return "nimacuowu";
    }
}
