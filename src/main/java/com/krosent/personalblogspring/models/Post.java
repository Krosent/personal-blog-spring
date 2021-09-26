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
    private String body;
    private String details;
    private Long author_id;
    private Date time_created;

    public Post() {
    }

    public Post(String body, String details, Long author_id, Date time_created) {
        this.body = body;
        this.details = details;
        this.author_id = author_id;
        this.time_created = time_created;
    }

}
