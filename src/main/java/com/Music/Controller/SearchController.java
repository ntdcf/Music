package com.Music.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by luohao on 2016/8/30.
 */
@Controller
public class SearchController {
    @RequestMapping(value="MusicSearch")
    public void searchMusic(@RequestParam("music_info") String MusicInfo, Model model) {
    }
}
