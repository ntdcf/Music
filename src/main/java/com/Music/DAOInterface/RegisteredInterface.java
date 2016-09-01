package com.Music.DAOInterface;

import com.Music.Model.DataIntance.User;

/**
 * Created by luohao on 2016/9/1.
 */

public interface RegisteredInterface {
    public boolean registeredUser(User user);
    public boolean findUserByUserName(String username);
}
