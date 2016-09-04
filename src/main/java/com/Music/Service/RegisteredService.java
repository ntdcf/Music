package com.Music.Service;

import com.Music.DAOInterface.RegisteredInterface;
import com.Music.Model.DataIntance.User;
import com.Music.Model.UserTableModel;
import org.springframework.stereotype.Service;

/**
 * Created by luohao on 2016/9/1.
 */
@Service
public class RegisteredService implements RegisteredInterface {
    private UserTableModel userTableModel;

    public RegisteredService() {
        userTableModel = new UserTableModel();
    }

    @Override
    public boolean registeredUser(User user) {
        userTableModel.create();
        userTableModel.addUser(user);
        return true;
    }

    @Override
    public boolean findUserByUserName(String username) {
        userTableModel.create();
        if (userTableModel.findUser(username).size() ==0) {
            return false;
        }
        return true;
    }
}
