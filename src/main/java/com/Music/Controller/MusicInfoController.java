package com.Music.Controller;

import com.Music.DAOInterface.MusicInfoInterface;
import com.Music.Model.DataIntance.Collection;
import com.Music.Model.DataIntance.Comment;
import com.Music.Model.DataIntance.Music;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * Created by luohao on 2016/9/2.
 */
@Controller
public class MusicInfoController {
    @Autowired
    MusicInfoInterface musicInfoInterface;

    @RequestMapping(value = "MusicInfo")
    public String index(@RequestParam("music_info") int MusicId, Model model) {
        List<Comment> list = musicInfoInterface.getCommentByMusicId(MusicId);
        model.addAttribute("user",musicInfoInterface.getUser());
        model.addAttribute("music",musicInfoInterface.getMusicInfoByMusicId(MusicId));
        model.addAttribute("comment",list);
        return "music";
    }

    @RequestMapping(value = "Collection")
    public void collectMusic(@RequestParam("info")String info , HttpServletResponse response) throws IOException {

        System.out.println(info);
        int flage = 1;
        PrintWriter out = response.getWriter();
        JSONObject jsonObject = new JSONObject(info);

        if(flage == 0) return;
        Collection collection = new Collection();
        collection.setMusicid((Integer) jsonObject.get("musicid"));
        collection.setUserid((Integer) jsonObject.get("userid"));

        if(collection.getUserid() == 0) {
            out.print(0);
            return;
        }

        if(musicInfoInterface.addCollection(collection)) {
            System.out.println("ok");
            musicInfoInterface.addCountListen(collection.getMusicid());
            out.println(1);     //收藏成功
            return;
        }
        out.print(2);
        System.out.println(2);  //收藏失败

    }

    @RequestMapping(value = "getCollection")
    public String getCollection(HttpSession session,Model model) {
        if(session.getAttribute("user_id") == null) return "login";
        List<Collection> list = musicInfoInterface.getCollectionMusic((int)session.getAttribute("user_id"));
        System.out.println(list);
        model.addAttribute("music",musicInfoInterface.getMusic());
        model.addAttribute("collection",list);
        return "collection";
    }

    @RequestMapping(value = "deleteCollection")
    public String deleteCollection(HttpSession session, Model model, Collection collection) {
        musicInfoInterface.deleteCollection(collection);
        return getCollection(session, model);
    }
}
