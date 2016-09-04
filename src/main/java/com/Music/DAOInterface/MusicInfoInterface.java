package com.Music.DAOInterface;

import com.Music.Model.DataIntance.Collection;
import com.Music.Model.DataIntance.Music;
import com.Music.Model.DataIntance.User;

import java.util.List;
import java.util.Map;

/**
 * Created by luohao on 2016/9/2.
 */
public interface MusicInfoInterface {
    public List getCommentByMusicId(int id);
    public Music getMusicInfoByMusicId(int id);
    public Map getUser();
    public boolean addCollection(Collection collection);
    public boolean addCountListen(int musicid);
    public List getCollectionMusic(int userid);
    public boolean deleteCollection(Collection collection);
    public Map getMusic();
    public List getMusicByTop();
}
