package com.Music.Model;

import com.Music.Model.DataIntance.Music;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by luohao on 2016/8/30.
 */
public class MusicMenuModel {
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

    public List find(String MusicInfo) {
        String SQLClass = "com.Music.Model.MusicMapper";
        List<Music> list=session.selectList(SQLClass,MusicInfo);
//        List list = session.selectList(SQLClass,MusicInfo);
        return list;
    }
}
