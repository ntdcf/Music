use music;
create table downloadtable(
    downloda_id  smallint primary key auto_increment, /*下载ID*/
    User_ID      int not null,                        /*用户ID*/
    Music_ID     int not null                         /*歌曲ID*/
    
);
