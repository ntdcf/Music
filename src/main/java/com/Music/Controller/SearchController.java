package com.Music.Controller;

import com.Music.DAOInterface.SearchInterface;
import com.Music.Model.DataIntance.Music;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

/**
 * Created by luohao on 2016/8/30.
 */
@Controller
public class SearchController {
    @Autowired
    SearchInterface searchInterface;

    @RequestMapping(value="MusicSearch")
    public String searchMusic(@RequestParam("music_info") String MusicInfo, Model model) {
        List<Music> list = searchInterface.findMusic(MusicInfo);
        Map<String,Music> musiclist = new HashMap<String, Music>();
        for (Music music: list) {
            musiclist.put(music.getMusicid(),music);
        }
//        System.out.println(set);
        model.addAttribute("music", musiclist);
        return "searchRes";
    }
}
