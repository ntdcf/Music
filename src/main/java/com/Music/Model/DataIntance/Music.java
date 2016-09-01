package com.Music.Model.DataIntance;

/**
 * Created by luohao on 2016/8/30.
 */
public class Music {
    private String musicid;
    private String musicname;
    private String musicsinger;
    private String musicspecial;
    private int musictime;
    private String musicurl;
    private int listenedcount;
    private String introduce;

    public String getMusicid() {
        return musicid;
    }

    public void setMusicid(String musicid) {
        this.musicid = musicid;
    }

    public String getMusicname() {
        return musicname;
    }

    public void setMusicname(String musicname) {
        this.musicname = musicname;
    }

    public String getMusicsinger() {
        return musicsinger;
    }

    public void setMusicsinger(String musicsinger) {
        this.musicsinger = musicsinger;
    }

    public String getMusicspecial() {
        return musicspecial;
    }

    public void setMusicspecial(String musicspecial) {
        this.musicspecial = musicspecial;
    }

    public int getMusictime() {
        return musictime;
    }

    public void setMusictime(int musictime) {
        this.musictime = musictime;
    }

    public String getMusicurl() {
        return musicurl;
    }

    public void setMusicurl(String musicurl) {
        this.musicurl = musicurl;
    }

    public int getListenedcount() {
        return listenedcount;
    }

    public void setListenedcount(int listenedcount) {
        this.listenedcount = listenedcount;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Music{" +
                "musicid='" + musicid + '\'' +
                ", musicname='" + musicname + '\'' +
                ", musicsinger='" + musicsinger + '\'' +
                ", musicspecial='" + musicspecial + '\'' +
                ", musictime=" + musictime +
                ", musicurl='" + musicurl + '\'' +
                ", listenedcount=" + listenedcount +
                ", introduce=" + introduce +
                '}';
    }
}
