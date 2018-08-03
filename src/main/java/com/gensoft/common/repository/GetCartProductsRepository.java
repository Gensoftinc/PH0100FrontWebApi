package com.gensoft.common.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gensoft.common.model.Cart;
import com.gensoft.common.model.GetCartProducts;

public interface GetCartProductsRepository extends JpaRepository<GetCartProducts, Long>{

	@Query(value="SELECT c.cart_id,c.product_id,c.date,c.product_quantity,c.user_id,p.discount,p.image_id,p.price,p.prod_desc,p.prod_name,p.quantity,"
			+ "p.size,p.sub_cat_id,p.updated_date,p.weight,p.note,p.del_status FROM product_details p,cart c WHERE c.user_id=:userId AND c.del_status=0 AND c.product_id=p.prod_id;"
		,nativeQuery=true)
	List<GetCartProducts> getCartProductsBYUserId(@Param("userId") int userId);

}
