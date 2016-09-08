$("body").on("click",".music_play",function () {

    $("#audio_player").attr("src",$(this).attr("value"));
});

