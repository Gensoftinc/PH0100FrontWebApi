<jsp:include page="../../admin-include/header.jsp"></jsp:include> 
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <!-- Main content -->
      <div class="content-wrapper">
      <section class="content">
      <div class="row">
            <!-- left column -->
            <div class="col-md-6">
			<div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Add New Category</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form action="${pageContext.request.contextPath}/submitProductCategory" enctype="multipart/form-data" method="POST">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Category Name</label>
                      <input type="text" class="form-control" id="" name="catName" placeholder="Enter Category">
                    </div>
                   
                    <div class="form-group">
                      <label>Category Description</label>
                      <textarea class="form-control" rows="3" name="catDesc" placeholder="Enter Category Description"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputFile">File input</label>
                      <input type="file" id="exampleInputFile" name="pictures">
                      
                    </div>
                   
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              
              
             </div>
             </div>
             
             
             <div class="col-md-6">
			<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Show All Category</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Category Name</th>
                      <th>Category Description</th>
                      <th style="width: 40px">Image</th>
                      <th style="width: 40px" >Edit</th>
                      <th style="width: 40px" >Delete</th>
                    </tr>
                    <c:forEach items="${productCategoryList}" var="productCategoryList">
                    <tr>
                      <td>${productCategoryList.catId}</td>
                      <td>${productCategoryList.catName}</td>
                      <td>${productCategoryList.catDesc}</td>
                      <td><span class="badge bg-red">${productCategoryList.pictures}</span></td>
                      <td><span class="fa-pencil fa fa-fw"></span></td>
                      <td><span class="fa-trash fa fa-fw"></span></td>
                    
                    </tr>
                   </c:forEach>
                  </table>
                </div><!-- /.box-body -->
              <!--   <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div> -->
              </div><!-- /.box -->
             </div>
             
             
             </div>
             
             </section>
              </div>
              
      <!-- Content Wrapper. Contains page content -->
   <jsp:include page="../../admin-include/footer.jsp"></jsp:include> 
  </body>
</html>
