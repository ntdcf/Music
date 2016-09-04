package com.Music.Controller;

import com.Music.DAOInterface.UserCommentInterface;
import com.Music.Model.DataIntance.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by luohao on 2016/9/2.
 */
@Controller
public class UserCommentController {
    @Autowired
    UserCommentInterface userCommentInterface;

    @RequestMapping(value = "Comment")
    public String index(HttpSession session, Model model) {
        if(session.getAttribute("user_id") == null){
            return "login";
        }
        int UserId = (int)session.getAttribute("user_id");
        model.addAttribute("comment", userCommentInterface.findUserComentById(UserId));
        model.addAttribute("music",userCommentInterface.getMusic());
//        System.out.println(userCommentInterface.getMusic().get("1"));
        return "userComment";
    }

    @RequestMapping(value = "addComment")
    public String setComment(Comment comment,HttpSession session){
        if (session.getAttribute("user_id") == null) {
            return "login";
        }
        comment.setUserid((int)session.getAttribute("user_id"));
        userCommentInterface.addComment(comment);
        return "redirect:MusicInfo?music_info="+comment.getMusicid();
    }

    @RequestMapping(value = "deleteComment")
    public void delete(@RequestParam("commentid")int id, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        if (userCommentInterface.deleteComment(id)) {
            out.print(1);
            return;
        }
        out.print(0);
    }
}
