package com.krosent.personalblogspring.models;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Date;

@Table(value="post")
@Data
public class Post {
    @Id
    private Long id;
    private String title;
    private String body;
    private Long author_id;
    private Date time_created;
    private String post_header_img;
    private Boolean featured;

    public Post() {
    }

    public Post(String title, String body, Long author_id, Date time_created, String post_header_img, Boolean featured) {
        this.title = title;
        this.body = body;
        this.author_id = author_id;
        this.time_created = time_created;
        this.post_header_img = post_header_img;
        this.featured = featured;
    }
}
