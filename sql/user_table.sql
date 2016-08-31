use music;
create table usertable(

   User_id  int  primary key auto_increment,  /*用户ID*/
   User_username varchar(40) not null,        /*用户登录帐号*/
   User_password varchar(50) not null,        /*用户登录密码*/
   User_name varchar(40)     not null,        /*姓名*/
   User_sex  char (2) check(User_sex in ('男','女')), /*性别*/
   User_age  smallint ,                        /*年龄*/
   User_date  date  ,                          /*生日*/
   admin tinyint(1)
);