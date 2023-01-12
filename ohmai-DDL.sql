create table accounts
(
    account_id bigint        not null
        primary key,
    name       varchar(1024) null,
    email      varchar(512)  null,
    password   char(8)       null,
    role       varchar(40)   null,
    favourites bigint        null,
    followers  int           null,
    likes      bigint        null
);

create table commission_policy
(
    commission_policy_id int    not null
        primary key,
    rule                 text   null,
    amount               double null
);

create table followers
(
    follower_id         int    not null
        primary key,
    time                date   null,
    id_account          bigint null,
    id_account_follower bigint null,
    constraint followers_ibfk_1
        foreign key (id_account) references accounts (account_id),
    constraint followers_ibfk_2
        foreign key (id_account_follower) references accounts (account_id)
);

create index id_account
    on followers (id_account);

create index id_account_follower
    on followers (id_account_follower);

create table images
(
    image_id bigint       not null
        primary key,
    caption  varchar(128) null,
    alt      varchar(128) null,
    url      varchar(512) null
);

create table location
(
    location_id bigint       not null
        primary key,
    name        varchar(128) null,
    lat         double       null,
    lon         double       null
);

create table promotion
(
    promotion_id bigint       not null
        primary key,
    start_date   date         null,
    end_date     date         null,
    voucher_code varchar(512) null
);

create table reviews
(
    review_id  bigint   not null
        primary key,
    rating     smallint null,
    comments   text     null,
    id_account bigint   null,
    constraint reviews_ibfk_1
        foreign key (id_account) references accounts (account_id)
);

create table comments
(
    comment_id bigint not null
        primary key,
    comment    text   null,
    id_review  bigint null,
    id_account bigint null,
    constraint comments_ibfk_1
        foreign key (id_review) references reviews (review_id),
    constraint comments_ibfk_2
        foreign key (id_account) references accounts (account_id)
);

create index id_account
    on comments (id_account);

create index id_review
    on comments (id_review);

create table posts
(
    post_id              bigint       not null
        primary key,
    date                 date         null,
    title                varchar(128) null,
    description          text         null,
    url                  varchar(512) null,
    views                bigint       null,
    likes                bigint       null,
    id_image             bigint       null,
    id_location          bigint       null,
    id_review            bigint       null,
    id_promotion         bigint       null,
    id_commission_policy int          null,
    id_account           bigint       null,
    constraint posts_ibfk_1
        foreign key (id_image) references images (image_id),
    constraint posts_ibfk_2
        foreign key (id_location) references location (location_id),
    constraint posts_ibfk_3
        foreign key (id_review) references reviews (review_id),
    constraint posts_ibfk_4
        foreign key (id_promotion) references promotion (promotion_id),
    constraint posts_ibfk_5
        foreign key (id_review) references reviews (review_id),
    constraint posts_ibfk_6
        foreign key (id_commission_policy) references commission_policy (commission_policy_id),
    constraint posts_ibfk_7
        foreign key (id_account) references accounts (account_id)
);

create table favourites
(
    favourite_id int    not null
        primary key,
    time         date   null,
    id_post      bigint null,
    id_account   bigint null,
    constraint favourites_ibfk_1
        foreign key (id_post) references posts (post_id),
    constraint favourites_ibfk_2
        foreign key (id_account) references accounts (account_id)
);

create index id_account
    on favourites (id_account);

create index id_post
    on favourites (id_post);

create table likes
(
    like_id    bigint not null
        primary key,
    time       date   null,
    id_post    bigint null,
    id_account bigint null,
    constraint likes_ibfk_1
        foreign key (id_post) references posts (post_id),
    constraint likes_ibfk_2
        foreign key (id_account) references accounts (account_id)
);

create index id_account
    on likes (id_account);

create index id_post
    on likes (id_post);

create index id_account
    on posts (id_account);

create index id_commission_policy
    on posts (id_commission_policy);

create index id_image
    on posts (id_image);

create index id_location
    on posts (id_location);

create index id_promotion
    on posts (id_promotion);

create index id_review
    on posts (id_review);

create index id_account
    on reviews (id_account);

create table transaction
(
    transaction_id       bigint       not null
        primary key,
    order_no             varchar(128) null,
    commission           double       null,
    amount               double       null,
    id_account           bigint       null,
    id_commission_policy int          null,
    constraint transaction_ibfk_1
        foreign key (id_account) references accounts (account_id),
    constraint transaction_ibfk_2
        foreign key (id_commission_policy) references commission_policy (commission_policy_id)
);

create index id_account
    on transaction (id_account);

create index id_commission_policy
    on transaction (id_commission_policy);

create table views
(
    view_id           bigint not null
        primary key,
    views             bigint null,
    first_viewed_time date   null,
    last_viewed_time  date   null,
    id_post           bigint null,
    id_account        bigint null,
    constraint views_ibfk_1
        foreign key (id_post) references posts (post_id),
    constraint views_ibfk_2
        foreign key (id_account) references accounts (account_id)
);

create index id_account
    on views (id_account);

create index id_post
    on views (id_post);