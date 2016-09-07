package com.Music.Service;

import com.Music.DAOInterface.AdminInterfacce;
import com.Music.Model.DataIntance.User;
import com.Music.Model.UserTableModel;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by luohao on 2016/9/5.
 */
@Service
public class AdminService implements AdminInterfacce {
    private UserTableModel userTableModel;
    public AdminService() {
        userTableModel = new UserTableModel();
    }

    @Override
    public List<User> getUser() {
        userTableModel.create();
        return userTableModel.getUser();
    }

    @Override
    public boolean lockUser(User user) {
        userTableModel.create();
        return userTableModel.lockUser(user);
    }
}
