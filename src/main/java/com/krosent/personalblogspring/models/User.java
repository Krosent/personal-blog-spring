package com.krosent.personalblogspring.models;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;
import java.util.Objects;

@Table(value="usr")
@Data
public class User {
    @Id
    private Long id;

    private String email;

    private String name;

    private String surname;

    private String password;

    private int role_number;

    public User() {
    }

    public User( String email, String name, String surname, String password, int role_number) {
        this.email = email;
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.role_number = role_number;
    }



}
