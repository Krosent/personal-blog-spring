-- Database Initialization (This implementation is for testing purposes, non production)
DROP TABLE IF EXISTS image;
DROP TABLE IF EXISTS tag;
DROP TABLE IF EXISTS post_tag;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS usr;
CREATE TABLE usr (id BIGSERIAL PRIMARY KEY, email VARCHAR(50), name VARCHAR(25),
    surname VARCHAR(25), password VARCHAR(128), role_number INT);
CREATE TABLE post (id BIGSERIAL PRIMARY KEY, title VARCHAR(128), body VARCHAR(4096), author_id BIGINT, time_created TIMESTAMP, post_header_img VARCHAR(668),
    featured BOOLEAN,
    CONSTRAINT fk_customer FOREIGN KEY(author_id) REFERENCES usr(id));
CREATE TABLE image(id BIGSERIAL PRIMARY KEY, url VARCHAR(256));
CREATE TABLE tag (id BIGSERIAL PRIMARY KEY, name VARCHAR(4096));
CREATE TABLE post_tag (id BIGSERIAL PRIMARY KEY, post_id BIGINT, tag_id BIGINT);

-- Database Population - Only for testing purposes!
INSERT INTO usr(email, name, surname, password, role_number) VALUES ('krosent2@gmail.com', 'Artyom', 'Kuznetsov', '0212', 1);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title', 'haha lirum ipsum and something like that you know it ;)', 1, '2021-09-28 13:37:52.000000',
                                                           'https://static.moniteurautomobile.be/imgcontrol/images_tmp/clients/moniteur/c680-d465/content/medias/images/news/37000/500/30/porsche-911-992__1_.jpg', true);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);

--
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                                                                                                                                                                                                                                               'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);
INSERT INTO post(title, body, author_id, time_created, post_header_img, featured) VALUES ('some_title 2', 'haha lirum ipsum and something like that you know it 2 ;)', 1, '2021-09-28 13:37:52.000000',
                                                                                          'https://www.icon-icon.com/wp-content/uploads/2021/05/bulletproof-ferrari-458-speciale-by-addarmor-front-view.jpg', false);