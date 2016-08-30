use music;
create table comment(

	Comment_ID  int primary key auto_increment,/*评论ID*/
	User_ID      int not null,                 /*用户ID*/
    Music_ID     int not null,                 /*歌曲ID*/
    comment_Info  varchar(200) not null,        /*评论内容*/
    comment_count smallint not null
);