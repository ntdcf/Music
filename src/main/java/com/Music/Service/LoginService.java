package com.Music.Service;

import com.Music.DAOInterface.LoginInterface;
import com.Music.Model.DataIntance.User;
import com.Music.Model.UserTableModel;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by gengzhi on 2016/8/31.
 */

@Service
public class LoginService implements LoginInterface {
    private UserTableModel userTableModel;

    public LoginService() {
        userTableModel = new UserTableModel();
    }

    public User findUser(String username, String password) {
        User loginUser = new User();
        loginUser.setUser_name(username);
        userTableModel.create();
        List<User> list = userTableModel.findUser(username);

        for(User user: list) {
            if(user.getUser_password().equals(password)){
                return user;
            }
        }
        return null;
    }
}
