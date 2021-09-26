DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS usr;
CREATE TABLE usr (id BIGSERIAL PRIMARY KEY, email VARCHAR(50), name VARCHAR(25), surname VARCHAR(25), password VARCHAR(128), role_number INT);
CREATE TABLE post (id BIGSERIAL PRIMARY KEY, body VARCHAR(4096), details VARCHAR(4096), author_id BIGINT, time_created TIMESTAMP,
    CONSTRAINT fk_customer FOREIGN KEY(author_id) REFERENCES usr(id));