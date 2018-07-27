<jsp:include page="../../admin-include/header.jsp"></jsp:include> 
<div class="content-wrapper" style="min-height: 901px;">
<section class="content">
          <div class="row">
            <div class="col-xs-12">
             
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Show All Added Products</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      	<th>Sr. No.</th>
                        <th>Product Name</th>
                        <th>Product Description</th>
                        <th>Price</th>
                        <th>Note</th>
                        <th>Updated Date</th>
                        <th>Weight</th>
                        <th>Discount</th>
                        <th>Image</th>
                        <th>Edit</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Shoes</td>
                        <td>This is men shoes</td>
                        <td>400</td>
                        <td>ccncjjd</td>
                        <td>27/07/2018</td>
                        <td>100</td>
                        <td>100</td>
                        <td>shoe.jpg</td>
                        <td><span class="fa-pencil fa fa-fw"></span></td>
                        <td><span class="fa-trash fa fa-fw"></span></td>
                      </tr>
                     
                    </tbody>
                    <!-- <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot> -->
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
        </div>
         <jsp:include page="../../admin-include/footer.jsp"></jsp:include>
         <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>