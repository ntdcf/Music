package com.Music.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by luohao on 2016/8/30.
 */
@Controller
public class MenuController {
    @RequestMapping(value = "UserUnLogin")
    public String UserUnLogin() {
        return "login";
    }
}
