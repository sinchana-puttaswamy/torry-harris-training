package com.torryharris.newtrain.model;

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
    private String userName;
    private String password;
}
