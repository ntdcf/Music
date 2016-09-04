/**
 * Created by luohao on 2016/9/4.
 */


$(".play").click(function () {
    var music = "<a value='"+$(this).attr("about")+"' class='music_play'>"+$(this).attr("value")+"</a>";
    $(".list-group",parent.document).append("<li class='list-group-item'>"+music+"</li>");
})