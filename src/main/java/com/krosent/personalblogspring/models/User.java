package com.krosent.personalblogspring.models;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Objects;

@Table(value="usr")
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", password='" + password + '\'' +
                ", role_number=" + role_number +
                '}';
    }
}
