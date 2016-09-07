<%--
  Created by IntelliJ IDEA.
  User: luohao
  Date: 2016/9/1
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/index.css"/>

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
                    <li class="active"><a href="index">发现音乐<span class="sr-only">(current)</span></a></li>
                    <li><a href="getCollection">我的收藏</a></li>
                    <li><a href="Comment">我的评论</a></li>
                    <%--<li><a href="#">我的分享</a></li>--%>
                </ul>
                <form class="navbar-form navbar-right" action="MusicSearch" method="GET" role="search">
                    <div class="form-group">
                        <input type="text" name="music_info" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
                </form>
                <ul class='nav navbar-nav'>
                    <li>
                        <a href="${user_name == null ? "Login" : "UserInfo"}">
                            用户：${user_name == null? "登录" : user_name}
                        </a>
                    </li>
                    <li>
                        ${user_name == null? "" : "<a href='exit'>退出登录</a>"}
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container-fluid">
    <div>
        <h3 class="music-list">搜索结果</h3>
        <div class="container-fluid music-list">
            <div class="row-fluid">
                <div class="span12">
                    <table class="table">

                        <thead>
                        <tr>
                            <td>
                                用户名
                            </td>
                            <td>
                                真实姓名
                            </td>
                            <td>
                                性别
                            </td>
                            <td>
                                年龄
                            </td>
                            <td>
                                操作
                            </td>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="user" items="${user}">

                            <tr>
                                <td>
                                        <a href="UserControl?userid=${user.userid}">${user.username}</a>
                                </td>
                                <td>
                                        ${user.name}
                                </td>
                                <td>
                                        ${user.sex?"男":"女"}
                                </td>
                                <td>
                                        ${user.age}
                                </td>
                                <td>
                                    <c:if test="${!user.admin}">
                                        <a href="adminComment?userid=${user.userid}">管理评论</a>
                                        <a href="lockUser?userid=${user.userid}&lock=${user.lock}">${user.lock?"解锁用户":"锁定用户"}</a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>
<br/>

</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/collecte.js"></script>
<script src="js/addMusic.js"></script>
</html>


