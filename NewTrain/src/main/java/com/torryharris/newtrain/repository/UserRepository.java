package com.torryharris.newtrain.repository;

import com.torryharris.newtrain.model.UserModel;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository <UserModel,String>{
}
