package com.gensoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.database.model.User;

/**
 * User Repository
 * 
 * @author KUdavant, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 *
 */
public interface UserRepository extends JpaRepository<User, Long> {
}
 