<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/login.css"/>
</head>
<body>


<nav class="navbar navbar-default navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
           <img class="navbar-brand" src="images/logo.png">
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">畅音阁</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">发现音乐<span class="sr-only">(current)</span></a></li>
                <li><a href="#">我的收藏</a></li>
                <li><a href="#">我的评论</a></li>
                <li><a href="#">我的分享</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="用户名">
                            </div>
                        </li>
                        <li>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="密码">
                            </div>
                        </li>
                        <li>
                            <div class="form-group">
                                <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</html>
