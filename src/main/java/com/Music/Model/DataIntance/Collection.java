package com.Music.Model.DataIntance;

/**
 * Created by luohao on 2016/9/2.
 */
public class Collection {
    private int collectionid;
    private int userid;
    private int musicid;

    public int getCollectionid() {
        return collectionid;
    }

    public void setCollectionid(int collectionid) {
        this.collectionid = collectionid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getMusicid() {
        return musicid;
    }

    public void setMusicid(int musicid) {
        this.musicid = musicid;
    }

    @Override
    public String toString() {
        return "Collection{" +
                "collectionid=" + collectionid +
                ", userid=" + userid +
                ", musicid=" + musicid +
                '}';
    }
}
