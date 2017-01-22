/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/1/6 19:46:53                            */
/*==============================================================*/


drop table if exists forum;

drop table if exists post;

drop table if exists reply;

drop table if exists user;

/*==============================================================*/
/* Table: forum                                                 */
/*==============================================================*/
create table forum
(
   forumId              int not null auto_increment,
   forunName            varchar(20),
   forumDesc            varchar(100),
   primary key (forumId)
);

/*==============================================================*/
/* Table: post                                                  */
/*==============================================================*/
create table post
(
   postId               int not null auto_increment,
   userId               int,
   forumId              int,
   postTitle            varchar(100),
   postContent          varchar(4096),
   createDate           date,
   browseCount          int,
   primary key (postId)
);

/*==============================================================*/
/* Table: reply                                                 */
/*==============================================================*/
create table reply
(
   replyId              int not null auto_increment,
   postId               int not null,
   replyDate            date,
   replyContent         varchar(2048),
   primary key (replyId)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null auto_increment,
   userName             varchar(20),
   account              varchar(20),
   passWord             varchar(20),
   email                varchar(20),
   phone                varchar(11),
   image                varchar(100),
   registerTime         date,
   Logincount           int,
   isDisabled           int,
   Actor                varchar(20),
   primary key (userId)
);

alter table post add constraint FK_帖子版块 foreign key (forumId)
      references forum (forumId) on delete restrict on update restrict;

alter table post add constraint FK_用户帖子 foreign key (userId)
      references user (userId) on delete restrict on update restrict;

alter table reply add constraint FK_帖子回帖 foreign key (postId)
      references post (postId) on delete restrict on update restrict;

