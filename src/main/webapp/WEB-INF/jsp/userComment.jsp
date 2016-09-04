<%--
  Created by IntelliJ IDEA.
  User: luohao
  Date: 2016/9/2
  Time: 15:10
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
    <link rel="stylesheet" href="css/music.css"/>
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
                    <li class="active"><a href="Comment">我的评论</a></li>
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
        <h2 class="music-title">${user_name}&nbsp;评论过的歌曲</h2>
        <div class="container-fluid music-list">
            <div class="row-fluid">
                <div class="span12">
                    <table class="table">
                        <tbody>
                        <c:forEach var="comment" items="${comment}">
                            <tr>
                                <%--${music}--%>
                                <td>
                                    用户${user_name}评论过歌曲《${music.get(comment.musicid).musicname}》：
                                </td>
                                <td>
                                    内容：${comment.commentinfo}
                                </td>
                                <td>
                                    <a class="deleteComment" value="${comment.commentid}">
                                        删除
                                    </a>
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

</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/comment.js"></script>
</html>


