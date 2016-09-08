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

    <div class="row-fluid">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" ></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/1.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="images/2.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="images/3.jpg" alt="Second slide">
                </div>

            </div>
        </div>
    </div>

    <div>
        <h3 class="music-list">热门歌曲TOP5</h3>
        <div class="container-fluid music-list">
            <div class="row-fluid">
                <div class="span12">
                    <table class="table">
                        <tbody>
                        <c:forEach var="music" items="${music}">
                            <tr>
                                <td>
                                ${music.musicname}
                                </td>
                                <td>
                                ${music. musicsinger}
                                </td>
                                <td>
                                ${music.musicspecial}
                                </td>

                                <td>
                                        ${music. listenedcount}
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
<script src="js/index.js"></script>
<script src="js/addMusic.js"></script>
</html>
