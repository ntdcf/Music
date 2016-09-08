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
    <div class="login-logo">上传歌曲</div>
    <div class="table-sty" >
        <form action="update" method="post" enctype="multipart/form-data">
        <table id="msg_user">
            <tr>
                <td>${ok}</td>
                <td></td>
            </tr>
            <tr>
                <td>*歌曲名：</td>
                <td><input type="text" name="musicname" class="form-control" placeholder="请输入歌曲名"></td>
            </tr>
            <tr>
                <td>*歌手：</td>
                <td><input type="text" name="musicsinger" class="form-control" placeholder="请输入歌手名"></td>
            </tr>
            <tr>
                <td>*专辑：</td>
                <td><input type="text" name="musicspecial" id="password2" class="form-control" placeholder="请输入专辑名称"></td>
            </tr>
            <tr>
                <td>*歌曲时长：</td>
                <td><input type="time" name="musictime" class="form-control" placeholder="请输入歌曲"></td>
            </tr>
            <tr>
                <td>*文件：</td>
                <td><input type="file" name="musicfile" class="form-control" placeholder="请输入您的真实姓名"></td>
            </tr>

            <tr>
                <td>*介绍：</td>
                <td>
                    <textarea name="text" class="form-control"></textarea>
                </td>
            </tr>
            <tr>
                <td><button type="submit" class="btn btn-default">上传</button></td>
                <td><button type="reset" class="btn btn-default">重置</button></td>
            </tr>
        </table>
        </form>
    </div>

</div>
<br/>
<br/>

</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/registered.js"></script>
</html>

