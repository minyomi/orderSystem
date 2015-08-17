<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.mos1.bean.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<link rel="shortcut icon" href="img/favicon.png">

<title>电子菜单管理系统</title>

<jsp:include page="jsphead1.jsp"></jsp:include>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">


		<div class="row">
			<div id="time">22:18:52</div>
		</div>
		<section class="panel">
			<header class="panel-heading"> 餐桌组列表 </header>
			<table class="table table-striped table-advance table-hover">
				<thead>
					<tr>
						<th>餐桌组名</th>
						<th>餐桌数</th>
						<th>成员</th>
						<th><i class=" icon-edit"></i>操作</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<DeskGroup> deskGroups=(List<DeskGroup>)request.getAttribute("deskGroups");
					                                 Iterator<DeskGroup> it=deskGroups.iterator();
					                                 while(it.hasNext())
					                                   {
					    	                           DeskGroup deskGroup =it.next();
					%>
					<tr>
						<td><%=deskGroup.getName()%></td>
						<td class="hidden-phone"><%=deskGroup.getDesk_number()%></td>
						<td>xx</td>
						<td><a href="DeleteDeskGroup?id=<%=deskGroup.getId()%>"><button
									class="btn btn-danger btn-xs tooltips" data-original-title="删除">
									<i class="icon-trash "></i>
								</button></a>
							<button class="btn btn-primary btn-xs tooltips"
								data-original-title="修改" data-toggle="modal"
								data-target="#myModal">
								<i class="icon-pencil"></i>
							</button> <!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">修改餐桌组名</h4>
										</div>
										<div class="modal-body">
											<form role="form" class="form-horizontal tasi-form"
												action="ChangeDeskGroup" method="post">
												<input type="hidden" name="id"
													value="<%=deskGroup.getId()%>">
												<div class="form-group has-success">
													<label class="col-lg-2 control-label">餐桌组名</label>
													<div class="col-lg-10">
														<input type="text" placeholder="" id="f-name"
															class="form-control" name="new_name">
													</div>
												</div>

												<div class="modal-footer">
													<button type="submit" class="btn btn-primary">保存</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">取消</button>
												</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
								</form></td>
					</tr>

					</tr>
					<%
						}
					%>

				</tbody>
			</table>
		</section>



	</section>
</section>
<!--main content end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript"
	src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/jquery.sparkline.js" type="text/javascript"></script>
<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/jquery.customSelect.min.js"></script>
<script src="js/respond.min.js"></script>

<script class="include" type="text/javascript"
	src="js/jquery.dcjqaccordion.2.7.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--script for this page-->
<script src="js/sparkline-chart.js"></script>
<script src="js/easy-pie-chart.js"></script>
<script src="js/count.js"></script>
<script>
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		// add a zero in front of numbers<10
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
		t = setTimeout(function() {
			startTime()
		}, 500);
	}

	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
</script>
<script>
	//owl carousel

	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			navigation : true,
			slideSpeed : 300,
			paginationSpeed : 400,
			singleItem : true,
			autoPlay : true

		});
	});

	//custom select box

	$(function() {
		$('select.styled').customSelect();
	});
</script>
</body>
</html>