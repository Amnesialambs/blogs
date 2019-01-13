

/*  博客用户表： tm_user  */

create table tm_user(
  user_id bigint(20) primary key auto_increment comment "用户id",
  user_name varchar(30) not null comment "用户名",
  user_password varchar(128) not null comment "用户密码",
  last_login_ip varchar(30) default " " comment "最近一次登录ip",
  last_login_time datetime default null comment "最近一次登录时间",
  avatar varchar(255) default null comment "头像",
  status int(8) default null comment "审批状态",
  create_by int(11) default null comment "创建人",
  create_date datetime default null comment "创建时间",
  update_by int(11) default null comment "更新人",
  update_date datetime default null comment "更新时间",
  record_version int(6) default 0 comment "版本号",
  deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表'
;

/*  人员信息表 ： tm_emp  */
create table tm_emp (
    emp_id bigint(20) primary key auto_increment comment "人员id",
    org_id bigint(20) not null comment "组织id",
    emp_name varchar(60) default " " comment "人员姓名",
    emp_sex int(8) comment "人员性别",
    emp_birthday datetime comment "人员生日",
    emp_identity_card varchar(30) default null comment "人员身份证",
    emp_province bigint(20) default null comment "人员所在省份",
    emp_city bigint(20) default null comment "人员所在市",
    emp_country bigint(20) default null comment "人员所在县/区",
    emp_address varchar(100) default null comment "人员详细地址",
    emp_email varchar(60) default null comment "邮箱",
    emp_mobile_phone varchar(20) default null comment "手机号",
    status int(8) default null comment "审批状态",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='人员信息表'
;

/*  菜单信息表：tm_menu  */

create table tm_menu(
    menu_id bigint(20) primary key auto_increment comment "菜单id",
    menu_name varchar(60) default null comment "菜单名称",
    menu_url varchar(100) default null comment "菜单路劲",
    menu_icon varchar(100) default null comment "菜单图标 ",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='菜单信息表'
;

/*  职位表：tm_position */
create table tm_position(
    position_id bigint(20) primary key auto_increment comment "职位id",
    org_id bigint(20) not null comment "组织id",
    position_code varchar(60) default null comment "职位代码",
    position_name varchar(100) default null comment "职位名称",
    status int(8) default null comment "审批状态",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='菜单信息表'
;

/*  角色信息表：tm_role  */

create table tm_role (
    role_id bigint(20) primary key auto_increment comment "角色id",
    org_id bigint(20) not null comment "组织id",
    role_code varchar(60) default null comment "角色代码",
    role_name varchar(30) default null comment "角色名称",
    status int(8) default null comment "审核状态",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表'
;

/*  职位角色关联表：tr_position_role */
create table tr_position_role (
    relation_id bigint(20) primary key auto_increment comment "关系id",
    postion_id bigint(20) not null comment "职位id",
    role_id bigint(20) not null comment "角色id",
    org_id bigint(20) not null comment "组织id",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='职位角色关联表'
;


/*  用户职位关联表：tr_user_postion  */

create table tr_user_position (
    relation_id bigint(20) primary key auto_increment comment "关系id",
    postion_id bigint(20) not null comment "职位id",
    user_id bigint(20) not null comment "用户id",
    org_id bigint(20) not null comment "组织id",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
)ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='用户职位关联表'
;

/*  用户人员关联表：tr_user_emp  */

create table tr_user_emp (
    relation_id bigint(20) primary key auto_increment comment "关系id",
    emp_id bigint(20) not null comment "人员id",
    user_id bigint(20) not null comment "用户id",
    org_id bigint(20) not null comment "组织id",
    create_by int(11) default null comment "创建人",
    create_date datetime default null comment "创建时间",
    update_by int(11) default null comment "更新人",
    update_date datetime default null comment "更新时间",
    record_version int(6) default 0 comment "版本号",
    deleted int(1) default 0 comment "逻辑删除：0 正常，1 删除"
 )ENGINE=InnoDB AUTO_INCREMENT=10000000000 DEFAULT CHARSET=utf8mb4 COMMENT='用户人员关联表'
;











