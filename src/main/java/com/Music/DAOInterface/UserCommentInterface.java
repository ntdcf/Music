package com.Music.DAOInterface;


import com.Music.Model.DataIntance.Comment;

import java.util.List;
import java.util.Map;

/**
 * Created by luohao on 2016/9/2.
 */
public interface UserCommentInterface {
    public List findUserComentById(int id);
    public Map getMusic();
    public boolean addComment(Comment comment);
    public boolean deleteComment(int id);
}
