<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />

<link href="./system/css/bootstrap.min.css" rel="stylesheet" />
<link href="./system/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="./system/css/font-awesome.css" rel="stylesheet" />

<link href="./system/css/adminia.css" rel="stylesheet" />
<link href="./system/css/adminia-responsive.css" rel="stylesheet" />

<link href="./system/css/pages/dashboard.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>


<body>


	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="./">后台管理系统</a>

				<div class="nav-collapse">

					<ul class="nav pull-right">

						<li class="divider-vertical"></li>

						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle " href="#"> <%=session.getAttribute("username")%>
								<b class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="System_Set.jsp"><i class="icon-user"></i>
										用户设置</a></li>

								<li><a href="Change_User"><i class="icon-lock"></i>
										修改密码</a></li>

								<li class="divider"></li>

								<li><a href="System_LoginOut.jsp"><i class="icon-off"></i>退出登录</a>
								</li>
							</ul></li>
					</ul>

				</div>
				<!-- /nav-collapse -->

			</div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->


	</div>

	<!-- /navbar -->
	<div id="content">
		<div class="container">
			<div class="row">
				<div class="span3">
					<ul id="main-nav" class="nav nav-tabs nav-stacked">
						<li class="active"><a href="User_index"> <i
								class="icon-home"></i> 主界面
						</a></li>
						<li class="active"><a href="#"> <i class="icon-user"></i>
								用户管理
						</a></li>
						<li><a href="Add_User"> <i class="icon-minus"></i>
								添加用户

						</a></li>
						<li><a href="CheckUersList"> <i class="icon-minus"></i>
								查看用户列表

						</a></li>
						<li class="active"><a href="#"> <i class="icon-th-large"></i>
								餐饮店管理

						</a></li>
						<li><a href="Add_RestUsername"> <i class="icon-minus"></i>
								添加账号

						</a></li>
						<li><a href="CheckResList"> <i class="icon-minus"></i>
								查看账号列表

						</a></li>

						<li><a href="Chain_Manager"> <i class="icon-minus"></i>
								连锁店管理

						</a></li>
						<li><a href="Rest_Login.html"> <i class="icon-lock"></i>
								进入电子菜单管理系统
						</a></li>
					</ul>
					<hr />
					<br />

				</div>
				<!-- /span3 -->