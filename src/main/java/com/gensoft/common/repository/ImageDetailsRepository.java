package com.gensoft.common.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.common.model.ImageDetails;

public interface ImageDetailsRepository extends JpaRepository<ImageDetails, Long>{
	
	List<ImageDetails> save(List<ImageDetails> imageDetailsList);

}
