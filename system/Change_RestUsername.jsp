<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="cn.mos1.bean.*" %> 
 <!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8" />
    <title>电子菜单管理系统</title>

 <jsp:include page="jsphead.jsp"></jsp:include>

			
		    	<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-user"></i>
					修改餐饮店密码					
				</h1>
				
				<div class="stat-container">										
			
		
				
						
							<div class="tab-content">
								<div class="tab-pane active" id="1">
								<form id="edit-profile" class="form-horizontal" action="ChangeResWordServlet"	method="post">									
										<div class="control-group">											
											<label class="control-label" for="username">餐饮店账号</label>
											<div class="controls">
												<input type="text" class="input-medium " id="username" name="username" /></div> <!-- /controls -->				
										</div> <!-- /control-group -->
										<div class="control-group">											
											<label class="control-label" for="new_username">新账号</label>
											<div class="controls">
												<input type="text" class="input-medium " id="new_username" name="new_username" /></div> <!-- /controls -->				
										</div> <!-- /control-group -->
										<div class="control-group">											
											<label class="control-label" for="new_password">新密码</label>
											<div class="controls">
												<input type="password" class="input-medium " id="new_password" name="new_password" /></div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
																														
										
										<div class="control-group">											
											<label class="control-label" for="password">确认密码</label>
											<div class="controls">
												<input type="password" class="input-medium" id="password" value="" name="password"/>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
	
										<div class="form-actions">
											<button type="submit" class="btn btn-primary">保存</button> 
											<button class="btn">取消</button>
										</div> <!-- /form-actions -->
							
								</div>
								
							</div>
						  <%String info=null;  
							if(request.getAttribute("info")!=null)
								{
								  info=(String)request.getAttribute("info");
								  %>
								  <h3><%=info %></h3>
								  <% 
								}
						
						  %>
						  
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
