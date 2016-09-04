package com.Music.Controller;

import com.Music.DAOInterface.LoginInterface;
import com.Music.Model.DataIntance.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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

//    private static final Log logger = LogFactory.getLog(LoginController.class);

    @RequestMapping(value = "Login")
    public String index() {
        return "login";
    }

    @RequestMapping(value = "ActionLogin")
    public String actionLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session) {
        User user = login.findUser(username,password);
        if (user != null) {
            session.setAttribute("user_name", user.getUsername());
            session.setAttribute("user_id", user.getUserid());
            return "redirect:index";
        }
        return "user";
    }

    @RequestMapping(value = "exit")
    public String actionExit(HttpSession session) {
        session.setAttribute("user_name", null);
        session.setAttribute("user_id", null);
        return "login";
    }

    @RequestMapping(value = "UserInfo")
    public String getUser(HttpSession session,Model model){
        int userid = (Integer) session.getAttribute("user_id");
        model.addAttribute("user",login.getUser(userid));
        return "UserInfo";
    }

    @RequestMapping(value = "addUser")
    public String addUser(){
        return "registered";
    }

}
