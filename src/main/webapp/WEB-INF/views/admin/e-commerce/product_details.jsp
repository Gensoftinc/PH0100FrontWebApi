
<jsp:include page="../../admin-include/header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="addImagesInList" value="/addImagesInList" />

<div class="content-wrapper">
	<section class="content">
		<div class="row">
			<!-- form start -->
			<form role="form">
				<div class="col-md-6">
					<div class="box box-primary">
						<div class="box-header with-border">
							<h3 class="box-title">Product Details</h3>
						</div>
						<!-- /.box-header -->

						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Product Name</label>
								<!-- <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Category"> -->
								<input type="text" class="form-control" id="exampleInputEmail1" name="prodName" placeholder="Enter Category">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Sub-Category Name</label> <select
									class="form-control" name="subCatId">
									<c:forEach items="${productSubCategoryList}"
										var="productSubCategoryList">
										<option value="${productSubCategoryList.subCatId}">${productSubCategoryList.subCatName}</option>
									</c:forEach>
								</select>
							</div>

							<div class="form-group">
								<label>Product Description</label>
								<textarea class="form-control" rows="3"
									placeholder="Enter Category Description" name="prodDesc"></textarea>
							</div>

							<div class="form-group">
								<label for="exampleInputFile">Note</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									placeholder="Enter Category" name="note">

							</div>



						</div>
						<!-- /.box-body -->
					</div>
				</div>

				<div class="col-md-6">
					<div class="box box-primary">
						<div class="box-body">


							<div class="form-group">
								<label for="exampleInputFile">Discount</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter Category" name="discount">
							</div>

							<div class="form-group">
								<label for="exampleInputFile">Product Image</label> <a
									href="#myModal" class="btn btn-info top-space"
									data-toggle="modal">Add Product Images</a> <!-- <input
									type="button" class="form-control" id="exampleInputEmail1"
									placeholder="Enter Category" name="picture"> -->
							</div>


							<div class="form-group">
								<label for="exampleInputFile">Price</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									placeholder="Enter Category" name="price">
							</div>

							<div class="form-group">
								<label for="exampleInputFile">Weight</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									placeholder="Enter Category" name="weight">
							</div>

							<div class="form-group">
								<label for="exampleInputFile">Update date</label> <input
									type="text" class="form-control form_datetime top-space"
									name="pregWomenObtainDate" name="updatedDate">
							</div>

							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</div>
				</div>

			</form>


			<div id="myModal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<%-- <form action="${pageContext.request.contextPath}/savePndtChildrenDetails"> --%>
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Add Images</h4>
						</div>
						<div class="modal-body">
							<div class="table-responsive">
								 <div class="box-body table-responsive no-padding">
								 
				<input type="file" id="fileId" name="fileId">
				<!-- <button type="button" class="btn btn-info"></button> -->
                  <table class="table table-hover" id="listOfImages">
                  <tbody>
                   <tr>
                      <th>ID</th>
                      <th>Image Name</th>
                    </tr>
                     
                    </tbody>
                  </table>
                </div>


								

							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-info"
								onclick="multiFunctionCall()">Update</button>
							<button type="submit" class="btn btn-default"
								data-dismiss="modal">Close</button>

						</div>
						<!--   </form> -->
						<script>
					var male = 0;
					var female = 0;
				</script>
						<script>
					function multiFunctionCall() {

						addImagesInList();
						
						
					}
				</script>
					</div>
				</div>
			</div>
			<jsp:include page="../../admin-include/footer.jsp"></jsp:include>
			<script type="text/javascript">
 
	$('.form_datetime').datepicker({
	  autoclose: true,
	  
	  format: "dd-mm-yyyy"}).datepicker()
	 
	  
	</script>

		</div>
	</section>
</div>
<script>
              function addImagesInList(){
        
            	  var fileId=document.getElementById("fileId").value;
            	  
            	  var fileName=fileId.substring(12, fileId.length);
            	  alert(fileName);
            	  
            	  $.getJSON('${addImagesInList}',
      					{
            		  
            		  		fileName : fileName,
      			
            		  		ajax : 'true'
      					
      					},function(data) {
      						 $('#listOfImages td').remove();
      						alert(data.imageName);
      						$.each(data, function(key, imageDetailsList) {
      							
      							
      							
      							var strVar="";
      							strVar += "<tr class='imageId'>";
      							strVar += " <td>"+imageDetailsList.imageId+"<\/td>";
      							strVar += " <td>"+imageDetailsList.imageName+"<\/td>";
      							strVar += " ";
      							strVar += " <\/tr>";
      							
      							$('#listOfImages tbody').append(strVar);

      						})
      						
      					});
              }
                            
</script>