/**
 * Created by luohao on 2016/9/3.
 */
$(".collecte").click(function () {
    var data=$(this).attr("value");
    $.ajax({
        url:"Collection",
        type:"get",
        data:"info="+data,
        dataType:"json",
        success: function (data) {
            switch (data){
                case 0:
                    alert("登录后才可以收藏歌曲哦~");
                    break;
                case 1:
                    alert("收藏成功");
                    break;
                case 2:
                    alert("您可能已经收藏过本首歌了");
                    break;
                default:
                    return;
            }
        }
    })
});