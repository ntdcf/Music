package com.Music.Service;

import com.Music.DAOInterface.UserCommentInterface;
import com.Music.Model.CommentModel;
import com.Music.Model.DataIntance.Comment;
import com.Music.Model.DataIntance.Music;
import com.Music.Model.MusicMenuModel;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by luohao on 2016/9/2.
 */
@Service
public class UserCommentService implements UserCommentInterface{
    private CommentModel commentModel;
    private MusicMenuModel musicMenuModel;

    public UserCommentService() {
        commentModel = new CommentModel();
        musicMenuModel = new MusicMenuModel();
    }

    @Override
    public List<Comment> findUserComentById(int id) {
        commentModel.create();
        return commentModel.findMusicCommentByUserId(id);
    }

    public Map<Integer, Music> getMusic()
    {
        musicMenuModel.create();
        List<Music> list = musicMenuModel.getMusic();
        Map<Integer, Music> map = new HashMap<Integer, Music>();
        for (Music music:list) {
            map.put(Integer.parseInt(music.getMusicid()), music);
        }
        return map;
    }

    @Override
    public boolean addComment(Comment comment) {
        commentModel.create();
        commentModel.addCommentByInfo(comment);
        return true;
    }

    @Override
    public boolean deleteComment(int id) {
        commentModel.create();
        commentModel.deleteCommentById(id);
        return true;
    }
}
