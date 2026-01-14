create table user_info
(
    user_id     varchar(36)      not null comment 'To put UserID in GUID string'
        primary key,
    user_name   varchar(20)      null comment 'To put the nickname of users',
    email       varchar(200)     null comment 'To put in the emails from user',
    password    varchar(32)      null comment 'To put in password in MD5',
    reg_time    datetime         null comment 'Registry time',
    status      tinyint(1)       null comment 'The status of users.0 is banned, 1 is enabled',
    occu_space  bigint           null comment 'The occupied space, use byte.',
    total_space bigint default 0 null comment 'The total space of user, also use byte.',
    role        tinyint          null comment 'Apply the role for the user.0 is admin, 1 is teacher, 2 is student,3 is guest.',
    constraint index_email
        unique (email) comment 'Create email index.',
    constraint index_nickname
        unique (user_name) comment 'Create index for nickname'
)
    comment 'To put in User Infomation';


