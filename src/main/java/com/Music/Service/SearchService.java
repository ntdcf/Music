package com.Music.Service;

import com.Music.DAOInterface.SearchInterface;
import com.Music.Model.DataIntance.Music;
import com.Music.Model.MusicMenuModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by luohao on 2016/9/1.
 */
@Service
public class SearchService implements SearchInterface {
    private MusicMenuModel musicMenuModel;

    public SearchService() {
        musicMenuModel = new MusicMenuModel();
    }

    @Override
    public List findMusic(String MusicInfo) {
        List<Music> list = new ArrayList<Music>();
        musicMenuModel.create();
        //按照歌名查找
        list.addAll(musicMenuModel.findMusicByName(MusicInfo));
        musicMenuModel.create();
        //按照歌手查找
        list.addAll(musicMenuModel.findMusicBySinger(MusicInfo));
        musicMenuModel.create();
        //按照专辑查找
        list.addAll(musicMenuModel.findMusicBySpecial(MusicInfo));
        return list;
    }
}
