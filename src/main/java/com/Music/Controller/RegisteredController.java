package com.Music.Controller;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by luohao on 2016/8/31.
 */
@Controller
public class RegisteredController {
    @RequestMapping(value = "/Register")
    public void RegisSuccess(@RequestParam("data") String data, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        System.out.println(data);
        JSONObject jsonObject = new JSONObject(data);
        System.out.println(jsonObject.get("username"));
        out.print("成功！");
    }
}
