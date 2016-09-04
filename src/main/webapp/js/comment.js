/**
 * Created by luohao on 2016/9/4.
 */

$(".deleteComment").click(function () {
    var commentid = $(this).attr("value");
    $.ajax({
        url:"deleteComment",
        data:"commentid="+commentid,
        type:"post",
        success: function (data) {
            if(data == 1) {
                alert("删除成功！");
                window.location.reload();
            } else {
                alert("删除失败，您可能已经删除过了");
                window.location.reload();
            }
        }
    })
});