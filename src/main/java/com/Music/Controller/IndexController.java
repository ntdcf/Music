package com.Music.Controller;

import com.Music.DAOInterface.MusicInfoInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by luohao on 2016/8/29.
 */
@Controller
public class IndexController {
    @Autowired
    MusicInfoInterface musicInfoInterface;

    @RequestMapping(value = "index")
    public String index(Model model) {
        model.addAttribute("music",musicInfoInterface.getMusicByTop());
        return "index";
    }
}
