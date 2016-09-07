package com.Music.Controller;

import com.Music.DAOInterface.AdminInterfacce;
import com.Music.Model.DataIntance.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by luohao on 2016/9/5.
 */
@Controller
public class AdminController {
    @Autowired
    AdminInterfacce adminInterfacce;

    @RequestMapping(value = "admin")
    public String index(Model model){
        List<User> list = adminInterfacce.getUser();
        model.addAttribute("user",list);
        return "userlist";
    }

    @RequestMapping(value = "lockUser")
    public String lockUser(@RequestParam("userid") int userid, @RequestParam("lock") boolean lock) {
        User user = new User();
        user.setUserid(userid);
        user.setLock(!lock);
        adminInterfacce.lockUser(user);
        return "redirect:admin";
    }
}
