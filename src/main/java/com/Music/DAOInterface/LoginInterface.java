package com.Music.DAOInterface;

import com.Music.Model.DataIntance.User;

/**
 * Created by gengzhi on 2016/8/31.
 */
public interface LoginInterface {
    public User findUser(String username, String password);
}
