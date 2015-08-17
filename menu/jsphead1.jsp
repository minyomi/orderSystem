<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
  <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;display: block;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;padding: 5px 5px 8px 5px;font: 10px arial, san serif;text-align: left;}</style></head>
  <body style="" class="lock-screen" onload="startTime()">

  <section id="container">
      <!--header start-->
      <header class="header white-bg">
            <div class="sidebar-toggle-box">
                <div data-original-title="隐藏导航栏" data-placement="right" class="icon-reorder tooltips"></div>
            </div>
            <!--logo start-->
            <a href="Index" class="logo">电子菜单<span>管理系统</span></a>
            <!--logo end-->
            
            <div class="top-nav ">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    <li>
                        <input type="text" class="form-control search" placeholder="Search">
                    </li>
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="./系统管理后台_files/系统管理后台.html">
                            <img alt="" src="./系统管理后台_files/avatar1_small.jpg">
                            <span class="username">用户名:<%=session.getAttribute("RName") %></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            
                            <li style="width:100%"><a href="RestaurantSet_Info"><i class="icon-cog"></i>设置</a></li>
                          
                            <li><a href="Rest_LoginOut.jsp"><i class="icon-key"></i>退出登录</a></li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!--search & user info end-->
            </div>
        </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar" class="nav-collapse " tabindex="5000" style="overflow: hidden; outline: none;">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a class="" href="Index">
                          <i class="icon-desktop"></i>
                          <span>主界面</span>
                      </a>
                  </li>


                 <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-user"></i>
                          <span>员工管理</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: block;">
                        
                          <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">员工管理<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="AddEmployee2">添加员工</a></li>
								  <li><a href="CheckEmployeeList">员工列表</a></li> 
								                              
                              </ul>
                          </li>
						  <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">员工分组<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="Add_EmployeeGroup">添加分组</a></li>
								  <li><a href="CheckGroup">分组列表</a></li>                               
                              </ul>
                          </li>
                      </ul>
                  </li>
                  
                 <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-food"></i>
                          <span>餐桌管理</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: block;">
                        
                          <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">餐桌管理<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="AddDesktop2">添加餐桌</a></li>
								  <li><a href="CheckDeskTop">餐桌列表</a></li>                               
                              </ul>
                          </li>
						  <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">餐桌分组<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="Add_DesktopGroup">添加分组</a></li>
								  <li><a href="CheckDeskGroupList">餐桌分组列表</a></li>                               
                              </ul>
                          </li>
                      </ul>
                  </li>
				   <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-reorder"></i>
                          <span>菜单管理</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: block;">
                        
                          <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">菜单列表管理<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="Add_Menu">添加菜单</a></li>
								  <li><a href="CheckAllMenu">查看菜单列表</a></li>                               
                              </ul>
                          </li>
						  <li class="sub-menu dcjq-parent-li">
                              <a href="boxed_page.html" class="dcjq-parent">菜品管理<span class="dcjq-icon"></span></a>
                              <ul class="sub" style="display: none; overflow: hidden;">
                                  <li><a href="AddDishItem2">添加菜品</a></li>
								  <li><a href="ShowDishItemList">菜品列表</a></li> 
                                  <li><a href="/menu/Gallery_Dish.html">菜品图片浏览</a></li> 								  
                              </ul>
                          </li>
                      </ul>
                  </li>

                  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-credit-card"></i>
                          <span>订单管理</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="ToAcceptOrderList">待受理订单</a></li>
                          <li><a href="AcceptedOrderList">已受理订单</a></li>
                          <li><a href="PaidOrderList">已结账订单</a></li>
						   <li><a href="CanceledOrderList">已取消订单</a></li>
                          
                      </ul>
                  </li>
				  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-home"></i>
                          <span>连锁店管理</span>
						    <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="ChainManager">连锁店列表</a></li>
						  </ul>
                                        
                  </li>
                  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-bar-chart"></i>
                          <span>统计报表</span>
						    <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="Chart">查看营业额</a></li>
						  </ul>
                                      
                  </li>
				  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-cogs"></i>
                          <span>系统设置</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="RestaurantSet_Info">餐饮店信息设置</a></li>
                      
                      </ul>
                  </li>
                  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-home"></i>
                          <span>点菜</span>
						    <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="DianCai0">点菜</a></li>
						  </ul>
                                        
                  </li>
                    <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="icon-home"></i>
                          <span>顾客预订</span>
						    <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="overflow: hidden; display: none;">
                          <li><a href="ShowReservation">顾客预订</a></li>
						  </ul>
                                        
                  </li>

                  <!--multi level menu start-->
                  
                  <!--multi level menu end-->

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
