use music;
create table collection(

	Collection_ID  int primary key auto_increment, /*收藏ID*/
	User_ID      int not null,          /*用户ID*/
    Music_ID     int not null           /*歌曲ID*/
);