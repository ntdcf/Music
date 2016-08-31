package com.Music.Model.DataIntance;

/**
 * Created by gengzhi on 2016/8/31.
 */
public class User {
    private int User_id;
    private String User_username;
    private String User_password;
    private String User_name;
    private String User_sez;
    private String User_age;
    private String User_date;
    private boolean admin;

    public int getUser_id() {
        return User_id;
    }

    public void setUser_id(int user_id) {
        User_id = user_id;
    }

    public String getUser_username() {
        return User_username;
    }

    public void setUser_username(String user_username) {
        User_username = user_username;
    }

    public String getUser_password() {
        return User_password;
    }

    public void setUser_password(String user_password) {
        User_password = user_password;
    }

    public String getUser_name() {
        return User_name;
    }

    public void setUser_name(String user_name) {
        User_name = user_name;
    }

    public String getUser_sez() {
        return User_sez;
    }

    public void setUser_sez(String user_sez) {
        User_sez = user_sez;
    }

    public String getUser_age() {
        return User_age;
    }

    public void setUser_age(String user_age) {
        User_age = user_age;
    }

    public String getUser_date() {
        return User_date;
    }

    public void setUser_date(String user_date) {
        User_date = user_date;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "User{" +
                "User_id=" + User_id +
                ", User_username='" + User_username + '\'' +
                ", User_password='" + User_password + '\'' +
                ", User_name='" + User_name + '\'' +
                ", User_sez='" + User_sez + '\'' +
                ", User_age='" + User_age + '\'' +
                ", User_date='" + User_date + '\'' +
                ", admin=" + admin +
                '}';
    }
}
