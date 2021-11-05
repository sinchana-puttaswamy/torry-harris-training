package com.torryharris.traindb.model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class UserModel {
    @Id
    private int id;
    private String username,password;

}
