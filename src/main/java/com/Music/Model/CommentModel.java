package com.Music.Model;

import com.Music.Model.DataIntance.Comment;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by luohao on 2016/9/2.
 */
public class CommentModel {
    private String resource = "config/mybatis/mybatisConfig.xml";
    private InputStream inputStream=null;
    private SqlSessionFactory sqlSessionFactory=null;
    private SqlSession session=null;


    public void create() {
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        session = sqlSessionFactory.openSession();
    }

    public List<Comment> findMusicCommentByMusicId(int id) {
        String SQLClass = "com.Music.Model.CommentMapper.findMusicCommentByMusicId";
        List<Comment> list = session.selectList(SQLClass,id);
        session.close();
        return list;
    }

    public List<Comment> findMusicCommentByUserId(int id) {
        String SQLString = "com.Music.Model.CommentMapper.findMusicCommentByUserId";
        List<Comment> list = session.selectList(SQLString,id);
        session.close();
        return list;
    }

    public boolean addCommentByInfo(Comment comment) {
        String SQLString = "com.Music.Model.CommentMapper.addComentByInfo";
        session.insert(SQLString, comment);
        session.commit();
        session.close();
        return true;
    }

    public boolean deleteCommentById(int id) {
        String SQLClass = "com.Music.Model.CommentMapper.deleteCommetById";
        session.delete(SQLClass,id);
        session.commit();
        session.close();
        return true;
    }
}
