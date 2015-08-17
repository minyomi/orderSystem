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
					餐饮店账号列表					
				</h1>
			  <div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>餐饮店账号列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					<table class="table table-striped table-bordered">
  <tr>
  <td>ID</td>
  <td>餐饮用户名</td>
  <td>用户密码</td>
  <td>操作</td>
  </tr>
  <%
     List<RestaurantAccount> accounts=(List<RestaurantAccount>)request.getAttribute("res_accounts");
     Iterator<RestaurantAccount> it=accounts.iterator();
     
     while(it.hasNext())
     {
    	RestaurantAccount account=it.next();
     %>
<tr>
<td><%=account.getId() %></td>
<td><%=account.getUsername() %></td>
<td><%=account.getPassword() %></td>
<td><a  class="btn btn-small btn-info tooltips" data-toggle="modal" data-target="#myModal">
											修改
										</a>
								          <!-- Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">                                 
                                    <h4 class="page-title" >修改餐桌信息</h4>
                                     </div>
                                 <div class="modal-body">
                                <form action="ChangeResWordServlet" method="post">
                                <input type="hidden" name="old_name" value="<%=account.getUsername()%>">
                                
								   <div class="form-group has-error">
                                      <label class="col-lg-2 control-label">新密码</label>
                                      <div class="col-lg-10">
                                          <input type="password" placeholder=""  class="form-control" name="password">                                          
                                      </div>
                                  </div>  
                                    <div class="form-group has-error">
                                      <label class="col-lg-2 control-label">确认新密码</label>
                                      <div class="col-lg-10">
                                          <input type="password" placeholder=""  class="form-control" name="password2">                                          
                                      </div>
                                  </div>  
								  
								 
                             </div>
                             <div class="modal-footer">
							 <button type="submit" class="btn btn-primary">保存</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>    
                          </div>
                    </form>
                              </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                             </div><!-- /.modal -->
<a href="DeleteResAccount?username=<%=account.getUsername()%>" class="btn btn-small btn-danger" onclick="show_confirm()" >
删除</a>
</td>
</tr>
   <% 
     }
     %>
    </table>
</table>
				 <% String info=null;

                  if(session.getAttribute("info")!=null)
                  {
                    info=(String)session.getAttribute("info");
                    session.setAttribute("info", null);
                  %>
                  <h3><%=info%></h3>
                  <%
                  }
                  %>		
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
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
