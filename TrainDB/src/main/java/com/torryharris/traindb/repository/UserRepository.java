package com.torryharris.traindb.repository;

import com.torryharris.traindb.model.UserModel;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<UserModel,Integer> {

}