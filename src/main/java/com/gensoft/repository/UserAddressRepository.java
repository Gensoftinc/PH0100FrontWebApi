package com.gensoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.database.model.UserAddress;

/**
 * User address repository.
 * <p>
 * 
 * @author AGolechha, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface UserAddressRepository extends JpaRepository<UserAddress, Long> {
}
