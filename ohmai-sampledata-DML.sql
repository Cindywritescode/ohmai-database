INSERT INTO ohmai.images (image_id, caption, alt, url)
VALUES ( 1, 'Cetaphil face wash', 'Cetaphil face wash', 'www.cetaphilfacewash.com');
INSERT INTO ohmai.images (image_id, caption, alt, url)
VALUES ( 2, 'Diptyque fig perfume', 'Diptyque fig perfume', 'www.diptyquefigperfume.com');
INSERT INTO ohmai.images (image_id, caption, alt, url)
VALUES ( 3, 'Evelom cleansing gel', 'Evelom cleansing gel', 'www.evelomcleansinggel.com');
INSERT INTO ohmai.images (image_id, caption, alt, url)
VALUES ( 4, 'Nars powder pressed', 'Nars powder pressed', 'www.Narspowderpressed.com');
INSERT INTO ohmai.images (image_id, caption, alt, url)
VALUES ( 5, 'Foreo bear mini', 'Foreo bear mini', 'www.foreobearmini.com');

INSERT INTO ohmai.location (location_id, name, lat, lon)
VALUES ( 1, 'Putney,London', 51.45979464520346, -0.21413996177785424);
INSERT INTO ohmai.location (location_id, name, lat, lon)
VALUES ( 2, 'Clapham Junction,London', 51.464174698356544, -0.170092617070423);
INSERT INTO ohmai.location (location_id, name, lat, lon)
VALUES ( 3, 'Roehampton,London', 51.44872695351816, -0.23982947219228684);
INSERT INTO ohmai.location (location_id, name, lat, lon)
VALUES ( 4, 'Roehampton,London', 51.44872695351816, -0.23982947219228684);

INSERT INTO ohmai.promotion (promotion_id, start_date, end_date, voucher_code)
VALUES ( 1, '2023-01-15', '2024-02-15', 'NEW10');
INSERT INTO ohmai.promotion (promotion_id, start_date, end_date, voucher_code)
VALUES ( 2, '2023-01-10', '2023-01-31', 'NEWBIE');
INSERT INTO ohmai.promotion (promotion_id, start_date, end_date, voucher_code)
VALUES ( 3, '2023-01-15', '2024-02-15', 'APP20');
INSERT INTO ohmai.promotion (promotion_id, start_date, end_date, voucher_code)
VALUES ( 4, '2023-11-15', '2023-12-01', 'BFPARTY');
INSERT INTO ohmai.promotion (promotion_id, start_date, end_date, voucher_code)
VALUES ( 5, '2023-04-10', '2023-08-10', 'HOLIDAY25');

INSERT INTO ohmai.commission_policy (commission_policy_id, rule, amount)
VALUES ( 1, 'Join Account', 5);
INSERT INTO ohmai.commission_policy (commission_policy_id, rule, amount)
VALUES ( 2, 'Publish 10 posts', 5);
INSERT INTO ohmai.commission_policy (commission_policy_id, rule, amount)
VALUES ( 3, 'Publish 20 posts', 15);
INSERT INTO ohmai.commission_policy (commission_policy_id, rule, amount)
VALUES ( 4, 'Refer a friend', 20);

INSERT INTO ohmai.accounts (account_id, name, email, password, role, favourites, followers, likes)
VALUES ( 1, 'Cindy', 'cindy@gmail.com', '12345', 'reviewer', 45, 3, 58);
INSERT INTO ohmai.accounts (account_id, name, email, password, role, favourites, followers, likes)
VALUES ( 2, 'Mladen', 'mladen@gmail.com', '456', 'reviewer', 16, 2, 38);
INSERT INTO ohmai.accounts (account_id, name, email, password, role, favourites, followers, likes)
VALUES ( 3, 'Joan', 'joan@gmail.com', '789', 'reviewer', 23, 1, 68);
INSERT INTO ohmai.accounts (account_id, name, email, password, role, favourites, followers, likes)
VALUES ( 4, 'Lihsin', 'lihsin@gmail.com', '101', 'admin', 82, 1, 98);
INSERT INTO ohmai.accounts (account_id, name, email, password, role, favourites, followers, likes)
VALUES ( 5, 'Ben', 'ben@gmail.com', '112', 'reviewer', 10, 2, 5);

INSERT INTO ohmai.reviews (review_id, rating, comments, id_account)
VALUES (1, 4, 'I bought the item immediately', 1);
INSERT INTO ohmai.reviews (review_id, rating, comments, id_account)
VALUES (2, 5, 'Amazing product, I use it for so long ', 2);
INSERT INTO ohmai.reviews (review_id, rating, comments, id_account)
VALUES (3, 3, 'Use it once, just average, probably not going to by again ', 2);
INSERT INTO ohmai.reviews (review_id, rating, comments, id_account)
VALUES (4, 4, 'Great product, I want to try it ', 3);
INSERT INTO ohmai.reviews (review_id, rating, comments, id_account)
VALUES (5, 4, 'Good value of product ', 4);

INSERT INTO ohmai.posts (post_id, date, title, description, url, views, likes, id_image, id_location, id_review, id_promotion, id_commission_policy, id_account)
VALUES ( 1, '2022-02-14', 'Cetaphil face wash', 'Great product, helpful for oily skin', 'https://www.ohmai.co/posts/7lI6zhYKoAUdJFohcAQj', 10, 1, 1, 1, 1, 1, 1, 1 );
INSERT INTO ohmai.posts (post_id, date, title, description, url, views, likes, id_image, id_location, id_review, id_promotion, id_commission_policy, id_account)
VALUES ( 2, '2022-02-14', 'Diptyque fig perfume', 'Very special perfume', 'https://www.ohmai.co/posts/9BPED0F3Lrt5AoW7p5u5', 12, 1, 2, 2, 2, 2, 2, 2);
INSERT INTO ohmai.posts (post_id, date, title, description, url, views, likes, id_image, id_location, id_review, id_promotion, id_commission_policy, id_account)
VALUES ( 3, '2022-05-21', 'EVELOM cleansing gel', 'Clean well! and reduce black head', 'https://www.ohmai.co/posts/A5XfsVL71jZNe0LAzBnz', 10, 5, 3, 3, 3, 1, 1, 3 );
INSERT INTO ohmai.posts (post_id, date, title, description, url, views, likes, id_image, id_location, id_review, id_promotion, id_commission_policy, id_account)
VALUES ( 4, '2022-07-04', 'Nars powder pressed', 'Like this powder pressed but the size is too small, will by the full size next time', 'https://www.ohmai.co/posts/CwEVQEZ8IIxVAnC7IIk8', 12, 2, 4, 3, 4, 2, 2, 3 );
INSERT INTO ohmai.posts (post_id, date, title, description, url, views, likes, id_image, id_location, id_review, id_promotion, id_commission_policy, id_account)
VALUES ( 5, '2022-01-10', 'Foreo bear mini', 'Easy to carry and work effectively!', 'https://www.ohmai.co/posts/F0oKqEkWeaUtT35aUosJ', 5, 2, 5, 4, 5, 1, 1, 4);

INSERT INTO ohmai.favourites (favourite_id, time, id_post, id_account)
VALUES (1, '2022-02-01', 1, 1);
INSERT INTO ohmai.favourites (favourite_id, time, id_post, id_account)
VALUES (2, '2022-02-21', 2, 1);
INSERT INTO ohmai.favourites (favourite_id, time, id_post, id_account)
VALUES (3, '2022-03-01', 3, 2);
INSERT INTO ohmai.favourites (favourite_id, time, id_post, id_account)
VALUES (4, '2022-05-05', 4, 3);
INSERT INTO ohmai.favourites (favourite_id, time, id_post, id_account)
VALUES (5, '2022-08-14', 1, 4);

INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (1, '2022-01-01', 1, 1);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (2, '2022-01-01', 2, 1);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (3, '2022-01-01', 3, 2);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (6, '2022-05-11', 3, 1);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (9, '2022-05-11', 3, 3);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (10, '2022-06-02', 3, 4);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (11, '2022-10-01', 3, 5);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (4, '2022-01-01', 4, 3);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (7, '2022-06-02', 4, 1);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (8, '2022-10-01', 5, 1);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (12, '2023-01-02', 5, 2);
INSERT INTO ohmai.likes (like_id, time, id_post, id_account)
VALUES (5, '2022-01-01', 5, 4);

INSERT INTO ohmai.transaction (transaction_id, order_no, commission, amount, id_account, id_commission_policy)
VALUES (1, 101, 5, 120, 1, 1 );
INSERT INTO ohmai.transaction (transaction_id, order_no, commission, amount, id_account, id_commission_policy)
VALUES (2, 102, 5, 230, 2, 2 );
INSERT INTO ohmai.transaction (transaction_id, order_no, commission, amount, id_account, id_commission_policy)
VALUES (3, 103, 15, 99, 3, 3 );
INSERT INTO ohmai.transaction (transaction_id, order_no, commission, amount, id_account, id_commission_policy)
VALUES (4, 104, 20, 43, 4, 4 );
INSERT INTO ohmai.transaction (transaction_id, order_no, commission, amount, id_account, id_commission_policy)
VALUES (5, 105, 5, 58, 3, 1 );

INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (1, 40, '2022-01-03','2022-01-04' , 1, 2);
INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (2, 12, '2022-02-13','2022-02-14' , 2, 3);
INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (3, 36, '2022-02-14','2022-02-15' , 2, 4);
INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (4, 23, '2022-07-30','2022-07-31' , 3, 5);
INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (5, 13, '2022-10-22','2022-10-23' , 4, 1);
INSERT INTO ohmai.views (view_id, views, first_viewed_time, last_viewed_time, id_post, id_account)
VALUES (6, 15, '2022-11-09','2022-11-10' , 5, 2);

INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (1, '2022-01-31', 1, 2);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (2, '2022-04-10', 1, 3);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (3, '2022-05-10', 2, 3);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (4, '2022-08-11', 3, 4);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (5, '2022-12-08', 4, 1);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (6, '2022-04-10', 1, 4);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (7, '2022-04-10', 2, 1);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (8, '2022-05-10', 5, 1);
INSERT INTO ohmai.followers (follower_id, time, id_account, id_account_follower)
VALUES (9, '2022-6-11', 5, 2);

INSERT INTO ohmai.comments (comment_id, comment, id_review, id_account)
VALUES (1,'I bought it as well', 1, 2);
INSERT INTO ohmai.comments (comment_id, comment, id_review, id_account)
VALUES (2,'same here', 1, 3);
INSERT INTO ohmai.comments (comment_id, comment, id_review, id_account)
VALUES (3,'I also recommend it' , 2, 4);
INSERT INTO ohmai.comments (comment_id, comment, id_review, id_account)
VALUES (4,'Really! maybe I should try other brand' , 3, 5);
INSERT INTO ohmai.comments (comment_id, comment, id_review, id_account)
VALUES (5,'I tried, good item' , 4, 1);