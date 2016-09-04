package com.Music.Model.DataIntance;

/**
 * Created by luohao on 2016/9/2.
 */
public class Comment {
    private int commentid;
    private int userid;
    private int musicid;
    private String commentinfo;

    public int getCommentid() {
        return commentid;
    }

    public void setCommentid(int commentid) {
        this.commentid = commentid;
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

    public String getCommentinfo() {
        return commentinfo;
    }

    public void setCommentinfo(String commentinfo) {
        this.commentinfo = commentinfo;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentid=" + commentid +
                ", userid=" + userid +
                ", musicid=" + musicid +
                ", commentinfo='" + commentinfo + '\'' +
                '}';
    }
}
