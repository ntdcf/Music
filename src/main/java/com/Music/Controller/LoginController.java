package com.Music.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by luohao on 2016/8/29.
 */
@Controller
public class LoginController {
    @RequestMapping(value = "Login")
    public String index() {
        return "login";
    }
}
