package com.Music.Model.DataIntance;

/**
 * Created by luohao on 2016/8/30.
 */
public class Music {
    private int music_id;

    public int getMusic_id() {
        return music_id;
    }

    public void setMusic_id(int music_id) {
        this.music_id = music_id;
    }

    @Override
    public String toString() {
        return "Music{" +
                "music_id=" + music_id +
                '}';
    }
}
