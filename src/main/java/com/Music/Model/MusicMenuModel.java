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

    public List findMusicByName(String musicname) {
        String SQLClass = "com.Music.Model.MusicMenuMapper.findMusicByName";
        musicname = "%"+musicname+"%";
        List<Music> list=session.selectList(SQLClass,musicname);
        session.close();
        return list;
    }

    public List findMusicBySinger(String singer) {
        String SQLClass = "com.Music.Model.MusicMenuMapper.findMusicBySinger";
        singer = "%"+singer+"%";
        List<Music> list=session.selectList(SQLClass,singer);
        session.close();
        return list;
    }

    public List findMusicBySpecial(String special) {
        String SQLClass = "com.Music.Model.MusicMenuMapper.findMusicBySpecial";
        special = "%"+special+"%";
        List<Music> list=session.selectList(SQLClass,special);
        session.close();
        return list;
    }

    public Music findMusicById(int MusicId) {
        String SQLClass = "com.Music.Model.MusicMenuMapper.findMusicById";
        Music music = (Music)session.selectOne(SQLClass,MusicId);
        session.close();
        return music;
    }

    public List<Music> getMusic() {
        String SQLClass = "com.Music.Model.MusicMenuMapper.getMusic";
        List<Music> list = session.selectList(SQLClass);
        session.close();
        return list;
    }

    public boolean addCount(int musicid) {
        String SQLClass = "com.Music.Model.MusicMenuMapper.addCount";
        session.update(SQLClass,musicid);
        session.commit();
        session.close();
        return true;
    }

    public List<Music> getMusicTop() {
        String SQLClass = "com.Music.Model.MusicMenuMapper.getTop";
        List<Music> list = session.selectList(SQLClass);
        session.close();
        return list;
    }
}
