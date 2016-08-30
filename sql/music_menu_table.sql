use music;
create table musicMenu(
 
  music_id       int primary key auto_increment, /*歌曲ID，主键*/
  music_name     varchar(40) not null ,          /*歌名*/
  music_singer   varchar(40) not null,           /*歌手*/
  music_special  varchar(40) not null,           /*专辑*/
  music_time     timestamp,                      /*时长*/
  music_url      varchar(50)       not null,             /*歌曲url*/
  music_listened_count  smallint  not null
);