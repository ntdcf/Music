package com.Music.Controller;

import com.Music.DAOInterface.RegisteredInterface;
import com.Music.Model.DataIntance.User;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by luohao on 2016/8/31.
 */
@Controller
public class RegisteredController {

    @Autowired
    RegisteredInterface registeredInterface;


    /**
     * @param data
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/Register")
    public void RegisSuccess(@RequestParam("data") String data, HttpServletResponse response) throws IOException, ParseException {
        //测试json是否收到
        System.out.println(data);
        //JSON转换成Map
        JSONObject jsonObject = new JSONObject(data);

        //将注册信息放入User对象
        User user = new User();
        user.setUsername((String)jsonObject.get("username"));

        PrintWriter out = response.getWriter();

        //判断用户名是否被注册过
        if (registeredInterface.findUserByUserName(user.getUsername())) {
            out.print("2");
            return;
        }


        user.setPassword((String)jsonObject.get("password"));
        user.setName((String)jsonObject.get("name"));
        user.setSex((boolean)jsonObject.get("sex"));
        user.setAge(Integer.parseInt((String)jsonObject.get("age")));
        //获取生日的unix时间戳
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = format.parse((String)jsonObject.get("date"));
        user.setDate((int)date.getTime());


        //像前端返回数据
        System.out.println(user);
        if (registeredInterface.registeredUser(user)) {
            out.print(1);
            return;
        }
        out.print(0);
    }
}
