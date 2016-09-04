package com.Music.Service;

import com.Music.DAOInterface.MusicInfoInterface;
import com.Music.Model.CollectionModel;
import com.Music.Model.CommentModel;
import com.Music.Model.DataIntance.Collection;
import com.Music.Model.DataIntance.Comment;
import com.Music.Model.DataIntance.Music;
import com.Music.Model.DataIntance.User;
import com.Music.Model.MusicMenuModel;
import com.Music.Model.UserTableModel;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by luohao on 2016/9/2.
 */
@Service
public class MusicInfoService implements MusicInfoInterface {
    private CommentModel commentModel;
    private MusicMenuModel musicMenuModel;
    private UserTableModel userTableModel;
    private CollectionModel collectionModel;



    public MusicInfoService() {
        commentModel = new CommentModel();
        musicMenuModel = new MusicMenuModel();
        userTableModel = new UserTableModel();
        collectionModel = new CollectionModel();
    }

    public List<Comment> getCommentByMusicId(int id) {
        commentModel.create();
        List<Comment> list = commentModel.findMusicCommentByMusicId(id);
        return list;
    }

    public Music getMusicInfoByMusicId(int id) {
        musicMenuModel.create();
        return musicMenuModel.findMusicById(id);
    }

    public Map<Integer,User> getUser() {
        userTableModel.create();
        List<User> list = userTableModel.getUser();
        Map<Integer,User> map = new HashMap<>();
        for (User userlist: list) {
            map.put(userlist.getUserid(),userlist);
        }
        return map;
    }

    @Override
    public boolean addCollection(Collection collection) {
        System.out.println(collection);
        collectionModel.create();
        if(collectionModel.findConllectionByInfo(collection) == null) {
            collectionModel.create();
            collectionModel.addCollection(collection);
            return true;
        }
        return false;
    }

    @Override
    public boolean addCountListen(int musicid) {
        musicMenuModel.create();
        musicMenuModel.addCount(musicid);
        return true;
    }

    @Override
    public List<Collection> getCollectionMusic(int userid) {
        collectionModel.create();
        List<Collection> list = collectionModel.getCollectionByUserId(userid);
        return list;
    }

    @Override
    public boolean deleteCollection(Collection collection) {
        collectionModel.create();
        collectionModel.deleteConlloction(collection);
        return true;
    }

    @Override
    public Map getMusic() {
        musicMenuModel.create();
        System.out.println();
        //对应用户
        List<Music> list = musicMenuModel.getMusic();
        Map<Integer,Music> map = new HashMap<Integer, Music>();
        for (Music music:list) {
            map.put(Integer.parseInt(music.getMusicid()), music);
        }
        return map;
    }

    @Override
    public List getMusicByTop() {
        musicMenuModel.create();
        return musicMenuModel.getMusicTop();
    }
}
