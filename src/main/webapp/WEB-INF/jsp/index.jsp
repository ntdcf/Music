<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li class="active"><a href="#">发现音乐<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">我的收藏</a></li>
                    <li><a href="#">我的评论</a></li>
                    <li><a href="#">我的分享</a></li>
                </ul>
                <form class="navbar-form navbar-right" action="MusicSearch" method="GET" role="search">
                    <div class="form-group">
                        <input type="text" name="music_info" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default glyphicon glyphicon-search search"></button>
                </form>
                <ul class='nav navbar-nav'>
                    <li>
                        <a href="${user_name == null ? "Login" : "#"}">
                        用户：${user_name == null? "登录" : user_name}
                        </a>
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
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/1.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="images/1.jpg" alt="Second slide">
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
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
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
</html>
