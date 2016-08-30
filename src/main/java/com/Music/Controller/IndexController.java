package com.Music.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by luohao on 2016/8/29.
 */
@Controller
public class IndexController {
    @RequestMapping(value="index")
    public String index() {
        return "index";
    }
}
