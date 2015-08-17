<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.mos1.bean.*"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
 <jsp:include page="jsphead.jsp"></jsp:include>




				<div class="span9">

					<h1 class="page-title">
						<i class="icon-user"></i> 添加餐饮店账号
					</h1>

					<div class="stat-container">




						<div class="tab-content">
							<div class="tab-pane active" id="1">
								<form id="edit-profile" class="form-horizontal"
									action="AddChain" method="post">
									<div class="control-group">
										<label class="control-label" for="username">连锁店名称</label>
										<div class="controls">
											<input type="text" class="input-medium " id="name"
												name="name" />
										</div>
										<!-- /controls -->
									</div>
									<div class="control-group">
										<label class="control-label" for="username">连锁店描述</label>
										<div class="controls">
											<input type="text" class="input-medium " id="description"
												name="description" />
										</div>
										<!-- /controls -->
									</div>
									<!-- /control-group -->

									<div class="form-actions">
										<button type="submit" class="btn btn-primary">保存</button>
										<button class="btn">取消</button>
									</div>
									<!-- /form-actions -->
							</div>
						</div>
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
					</div>


				</div>
				<!-- /stat	-container -->
</form>


			</div>
			<!-- /span9 -->


		</div>
		<!-- /row -->

	</div>
	<!-- /container -->

	</div>
	<!-- /content -->






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
