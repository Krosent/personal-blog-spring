DROP TABLE IF EXISTS tag;
DROP TABLE IF EXISTS post_tag;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS usr;
CREATE TABLE usr (id BIGSERIAL PRIMARY KEY, email VARCHAR(50), name VARCHAR(25),
    surname VARCHAR(25), password VARCHAR(128), role_number INT);
CREATE TABLE post (id BIGSERIAL PRIMARY KEY, body VARCHAR(4096), author_id BIGINT, time_created TIMESTAMP,
    CONSTRAINT fk_customer FOREIGN KEY(author_id) REFERENCES usr(id));
CREATE TABLE tag (id BIGSERIAL PRIMARY KEY, name VARCHAR(4096));
CREATE TABLE post_tag (id BIGSERIAL PRIMARY KEY, post_id BIGINT, tag_id BIGINT);