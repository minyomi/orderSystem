<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8" />
<title>登录界面</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />

<link href="system/css/bootstrap.min.css" rel="stylesheet" />
<link href="system/css/bootstrap-responsive.min.css" rel="stylesheet" />

<link href="system/css/font-awesome.css" rel="stylesheet" />

<link href="system/css/adminia.css" rel="stylesheet" />
<link href="system/css/adminia-responsive.css" rel="stylesheet" />

<link href="system/css/pages/login.css" rel="stylesheet" />

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>


		<div class="navbar navbar-fixed-top">

			<div class="navbar-inner">

				<div class="container">

					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" href="./">电子菜单管理系统</a>

					<div class="nav-collapse">

						<ul class="nav pull-right">

							<li class=""><a><i class="icon-chevron-left"></i> 返回主界面</a>
							</li>
						</ul>

					</div>
					<!-- /nav-collapse -->

				</div>
				<!-- /container -->

			</div>
			<!-- /navbar-inner -->

		</div>
		<!-- /navbar -->


		<div id="login-container">


			<div id="login-header">

				<h3>登录</h3>

			</div>
			<!-- /login-header -->

			<div id="login-content" class="clearfix">

				<form action="SystemLoginServlet" />
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="username">用户名</label>
						<div class="controls">
							<input type="text" class="username" name="username" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">密码</label>
						<div class="controls">
							<input type="password" class="password" name="password" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">验证码</label>
						<div class="controls">
							<input type="text" class="password" name="check_code" /><img src="CheckCode">
						</div>
					</div>
				</fieldset>

				<div id="remember-me" class="pull-left">
					<input type="checkbox" name="remember" id="remember" /> <label
						id="remember-label" for="remember">记住密码</label>
				</div>

				<div class="pull-right">
					<button type="submit" class="btn btn-warning btn-large">
						登录</button>
				</div>
	</form>

	</div>
	<!-- /login-content -->


	<div id="login-extra">


		<p>
			忘记密码？ <a href="forgot_password.html">找回密码</a>
		</p>

	</div>
	<!-- /login-extra -->

	</div>
	<!-- /login-wrapper -->



	<!-- Le javascript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="system/js/jquery-1.7.2.min.js"></script>


	<script src="system/js/bootstrap.js"></script>

</body>
</html>
