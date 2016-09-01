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
        loginUser.setUsername(username);
        userTableModel.create();
        List<User> list = userTableModel.findUser(username);
        if(list != null) {
            for(User user: list) {
                if(user.getPassword().equals(password)){
                    System.out.println(user);
                    return user;
                }
            }
        }
        return null;
    }
}
