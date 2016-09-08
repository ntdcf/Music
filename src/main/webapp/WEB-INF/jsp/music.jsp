<%--
  Created by IntelliJ IDEA.
  User: luohao
  Date: 2016/9/2
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<html xmlns:wb="http://open.weibo.com/wb">
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
        <h2 class="music-title">歌曲详情：${music.musicname}</h2>
        <div class="container-fluid music-list">
            <div class="row-fluid">
                <div class="span12">

                    <table class="table">
                        <tbody>

                        <tr>
                            <td>
                                歌曲名称：
                            </td>
                            <td>
                                ${music.musicname}
                            </td>
                            <td>
                                专辑名称：
                            </td>
                            <td>
                                ${music.musicspecial}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                歌手：
                            </td>
                            <td>
                                ${music.musicsinger}
                            </td>
                            <td>
                                <%--歌曲时长：--%>
                            </td>
                            <td>
                                <%--${time}--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                收听量：
                            </td>
                            <td>
                                ${music.listenedcount}
                            </td>
                            <td>
                                操作：
                            </td>
                            <td>
                                <a href="${music.musicurl}" download="download">下载</a>
                                <a value='{"musicid":${music.musicid},"userid":${user_id==null?0:user_id}}' class="collecte">
                                收藏
                                </a>
                                <a class="play"
                                   value="${music.musicname}"
                                   about="${music.musicurl}"
                                   name="${music.musicid}"
                                >播放</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                分享到微博：
                            </td>
                            <td>
                                <wb:share-button addition="text" type="button" default_text="我在听歌~一起听吧"></wb:share-button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table">
                        <tbody>
                        歌曲简介：
                        <tr>
                            <td>${music.introduce}</td>
                        </tr>
                        </tbody>
                    </table>

                    <table class="table">
                        <tbody>
                        <tr>
                            评论歌曲：
                        </tr>
                        <form action="addComment" method="post">
                            <tr>
                                <textarea class="form-control" name="commentinfo"></textarea>
                                <input type="hidden" name="musicid" value="${music.musicid}">
                            </tr>
                            <tr>
                                <button type="submit" class="btn btn-default">提交评论</button>
                            </tr>
                        </form>
                        </tbody>
                    </table>

                    <table class="table">
                        <tbody>
                        歌曲评论：
                        <c:forEach var="comment" items="${comment}">
                        <tr>
                            <td>
                                用户 ${user.get(comment.userid).username} 说：
                            </td>
                            <td>
                                ${comment.commentinfo}
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
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</html>

