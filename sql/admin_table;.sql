use music;
create table admin(
  Ad_UserId   tinyint  primary key auto_increment, /*管理员id，key primary*/
  Ad_UserName varchar(40) not null, /*管理员登录用户名*/
  Ad_Password varchar(20) not null,/*管理员登录密码*/
  power       varchar(20) not null
);