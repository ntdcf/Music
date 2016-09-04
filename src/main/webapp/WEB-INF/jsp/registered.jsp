<%--
  Created by IntelliJ IDEA.
  User: luohao
  Date: 2016/8/31
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>

<div>
    <nav class="navbar navbar-default navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <img class="navbar-brand" src="images/logo.png">
            </div>
            <div class="navbar-header">
                <a class="navbar-brand" href="index">畅音阁</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index">发现音乐<span class="sr-only">(current)</span></a></li>
                    <li><a href="getCollection">我的收藏</a></li>
                    <li><a href="Comment">我的评论</a></li>
                    <%--<li><a href="#">我的分享</a></li>--%>
                </ul>
                <form class="navbar-form navbar-right" action="MusicSearch" role="search">
                    <div class="form-group">
                        <input type="text" name="music_info" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div class="login-form" id="regis">
    <div class="login-logo">欢迎新用户注册</div>
    <div class="table-sty" >
        <%--<form>--%>
            <table id="msg_user">
                <tr>
                    <td>*用户名：</td>
                    <td><input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名"></td>
                </tr>
                <tr>
                    <td>*密码：</td>
                    <td><input type="password" name="password" id="password" class="form-control" placeholder="请输入密码"></td>
                </tr>
                <tr>
                    <td>*确认密码：</td>
                    <td><input type="password" name="password2" id="password2" class="form-control" placeholder="请再次输入密码"></td>
                </tr>
                <tr>
                    <td>*真实姓名：</td>
                    <td><input type="text" name="name" id="name" class="form-control" placeholder="请输入您的真实姓名"></td>
                </tr>
                <tr>
                    <td>*性别：</td>
                    <td>
                        <input type="radio" name="sex" id="sex1" value="1">男
                        <input type="radio" name="sex" id="sex2" value="0">女
                    </td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><input type="text" name="age" id="age" class="form-control" placeholder="请输入您的年龄"></td>
                </tr>
                <tr>
                    <td>生日：</td>
                    <td><input type="date" name="date" id="date" class="form-control" placeholder="请输入您的出生日期"></td>
                </tr>
                <tr>
                    <td><button class="btn btn-default" id="btn_reg">注册</button></td>
                    <td><button type="reset" class="btn btn-default">重置</button></td>
                </tr>
            </table>
        <%--</form>--%>
    </div>

</div>

</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/registered.js"></script>
</html>

