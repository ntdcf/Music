package com.Music.Model;

import com.Music.Model.DataIntance.Collection;
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
public class CollectionModel {
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

    public Collection findConllectionByInfo(Collection collection) {
        String SQLClass = "com.Music.Model.CollectionMapper.findConllectionByInfo";
        Collection info = session.selectOne(SQLClass,collection);
        session.close();
        return info;
    }

    public boolean addCollection(Collection collection) {
        String SQLClass = "com.Music.Model.CollectionMapper.addCollection";
        session.insert(SQLClass,collection);
        session.commit();
        session.close();
        return true;
    }

    public List<Collection> getCollectionByUserId(int userid) {
        String SQLClass ="com.Music.Model.CollectionMapper.findConllectionByUserId";
        List<Collection> list = session.selectList(SQLClass,userid);
        session.close();
        return list;
    }

    public boolean deleteConlloction(Collection collection) {
        String SQLClass = "com.Music.Model.CollectionMapper.deleteCollection";
        session.delete(SQLClass,collection);
        session.commit();
        session.close();
        return true;
    }

}
