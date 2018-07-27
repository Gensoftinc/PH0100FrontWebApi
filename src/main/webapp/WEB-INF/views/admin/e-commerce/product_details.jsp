 <jsp:include page="../../admin-include/header.jsp"></jsp:include>  
 <div class="content-wrapper">
 <section class="content">
 <div class="row">
 	<!-- form start -->
   <form role="form">
 	<div class="col-md-6">
			<div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Product Details</h3>
                </div><!-- /.box-header -->
                
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Product Name</label>
                      <!-- <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category"> -->
                     <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Sub-Category Name</label>
                      
                      <select class="form-control">
                      <option>Men</option>
                      </select>
                    </div>
                   
                    <div class="form-group">
                    	<label>Product Description</label>
                      	<textarea class="form-control" rows="3" placeholder="Enter Category Description"></textarea>
                    </div>
                    
                    <div class="form-group">
                    	<label for="exampleInputFile">Note</label>
                     	<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">
                      
                    </div>
                   
                   <div class="form-group">
                    <label for="exampleInputFile">Discount</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">
                   </div>
                 
              </div><!-- /.box-body -->
          </div>
     </div>
     
     <div class="col-md-6">
			<div class="box box-primary">
				<div class="box-body">
					<div class="form-group">
                      <label for="exampleInputFile">Product Image</label>
                      <input type="file" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">                      
                    </div>
                    
                    
                  <div class="form-group">
                       <label for="exampleInputFile">Price</label>
                   	  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">                      
                  </div>
                  
                    <div class="form-group">
                      <label for="exampleInputFile">Weight</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category">                      
                    </div>
                   
                   <div class="form-group">
                      <label for="exampleInputFile">Update date</label>
                   	  <input type="text" class="form-control form_datetime top-space" name="pregWomenObtainDate">
                    </div>
                    
                   <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
			</div>
		</div>
	</div>
	
	 </form>		
     <jsp:include page="../../admin-include/footer.jsp"></jsp:include>
      <script type="text/javascript">
 
	$('.form_datetime').datepicker({
	  autoclose: true,
	  
	  format: "dd-mm-yyyy"}).datepicker()
	 
	  
	</script>
      
</div>
</section>
</div>
