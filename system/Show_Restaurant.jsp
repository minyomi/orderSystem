<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="cn.mos1.bean.*" %> 
 <!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8" />
    <title>后台管理系统</title>
 <jsp:include page="jsphead.jsp"></jsp:include>

			
			
		    	<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-user"></i>
					餐饮店列表					
				</h1>
			  <div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>餐饮店列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					   <table  class="table table-striped table-bordered">
      <tr>
        <td>餐饮店名</td>
        <td>餐饮店地址</td>
        <td>餐饮店电话</td>
        <td>餐饮店简介</td>
      </tr>
      <%
     Restaurant restaurant=(Restaurant)request.getAttribute("restaurant");
      %>
       <tr>
         <td><%=restaurant.getName() %></td>
         <td><%=restaurant.getAddress() %></td>
         <td><%=restaurant.getPhone() %></td>
         <td><%=restaurant.getDescription() %></td>
       </tr> 
    </table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
                </div>
				
					
				</div> <!-- /stat	-container -->
			
					
				
			    </div> <!-- /span9 -->
			
			
		       </div> <!-- /row -->
		
            	</div> <!-- /container -->
	
               </div> <!-- /content -->
					
	



    
</form>
</form>

	<!-- Le javascript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="./system/js/jquery-1.7.2.min.js"></script>
	<script src="./system/js/excanvas.min.js"></script>
	<script src="./system/js/jquery.flot.js"></script>
	<script src="./system/js/jquery.flot.pie.js"></script>
	<script src="./system/js/jquery.flot.orderBars.js"></script>
	<script src="./system/js/jquery.flot.resize.js"></script>


	<script src="./system/js/bootstrap.js"></script>
	<script src="./system/js/charts/bar.js"></script>
  </body>
</html>
