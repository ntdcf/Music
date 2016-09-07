package com.Music.DAOInterface;

import com.Music.Model.DataIntance.User;

import java.util.List;

/**
 * Created by luohao on 2016/9/5.
 */
public interface AdminInterfacce {
    public List getUser();
    public boolean lockUser(User user);
}
