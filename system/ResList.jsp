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
							<i class="icon-user"></i> 餐饮店账号列表
						</h1>
						<div class="widget widget-table">

							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>餐饮店账号列表</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<tr>
										<td>ID</td>
										<td>餐饮用户名</td>
										<td>用户密码</td>
										<td>操作</td>
									</tr>
									<%
										List<RestaurantAccount> accounts = (List<RestaurantAccount>) request
												.getAttribute("res_accounts");
										Iterator<RestaurantAccount> it = accounts.iterator();

										while (it.hasNext()) {
											RestaurantAccount account = it.next();
									%>
									<tr>
										<td><%=account.getId()%></td>
										<td><%=account.getUsername()%></td>
										<td><%=account.getPassword()%></td>
										<td><a href="Connecting?id=<%=account.getId()%>"
											class="btn btn-small btn-danger" onclick="show_confirm()">关联</a>
										</td>
									</tr>
									<%
										}
									%>
								</table>
								</table>


							</div>
							<!-- /widget-content -->

						</div>
						<!-- /widget -->
					</div>


				</div>
				<!-- /stat	-container -->



			</div>
			<!-- /span9 -->


		</div>
		<!-- /row -->

		</div>
		<!-- /container -->

		</div>
		<!-- /content -->



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
