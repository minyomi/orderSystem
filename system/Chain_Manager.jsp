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
					连锁店管理					
				</h1>
				
				<div class="stat-container">										
			
		
				
						
							<div class="tab-content">
								<div class="tab-pane active" id="1">																
										<div class="control-group">											
											<a href="Chain_Add"><button><label class="control-label" for="username">添加连锁店</label></button></a>
											<div class="controls">			
										</div> <!-- /control-group -->
												<div class="control-group">											
											<a href="ConnectRestToChain"><button><label class="control-label" for="username">关联餐饮店</label></button></a>
											<div class="controls">
					
										</div> <!-- /control-group -->
										
							
								</div>
								
							</div>
						 <%
							String info = null;
							if (request.getAttribute("info") != null) {
								info = (String) request.getAttribute("info");
						%>
						<h3><%=info%></h3>
						<%
							}
						%>
						 
						  
						</div>
										
					
				</div> <!-- /stat	-container -->
			
					
				
			    </div> <!-- /span9 -->
			
			
		       </div> <!-- /row -->
		
            	</div> <!-- /container -->
	
               </div> <!-- /content -->
					
	



    




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
