<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="cn.mos1.bean.*" %> 
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">   
    <link rel="shortcut icon" href="img/favicon.png">

    <title>电子菜单管理系统</title>

   <jsp:include page="jsphead1.jsp" ></jsp:include>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
                <div id="time">22:18:52</div>  
				<section class="panel">
                          <header class="panel-heading">
                              统计列表
                          </header>
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th> 餐桌数</th>
                                  <th>员工数</th>
								  <th>菜单数</th>
								  <th>菜品数</th>
                                  <th>今日营业额</th>                                  
                                  <th>本月营业额</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td>100</td>
                                  <td class="hidden-phone">12</td>                               
                                  <td>10</td>
								  <td>10</td>
								  <td>10</td>
								  <td>10</td>
                                  
                              </tr>
                            
                              </tr>
                             
                            
                              </tbody>
                          </table>
                      </section>
           <section class="panel">
                              <header class="panel-heading">
                                 每周营业额曲线图
                              </header>
                              <div class="panel-body">
                                  <div id="hero-graph" class="graph"></div>
                              </div>
                          </section>
          </section>
      </section>
      <!--main content end-->
  </section>

   <!-- js placed at the end of the document so the pages load faster -->
     <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/morris.js-0.4.3/morris.min.js" type="text/javascript"></script>
    <script src="assets/morris.js-0.4.3/raphael-min.js" type="text/javascript"></script>
    <script src="js/respond.min.js" ></script>


    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

    <!--script for this page-->
  <script src="js/morris-script.js"></script>
<script>
        function startTime()
        {
            var today=new Date();
            var h=today.getHours();
            var m=today.getMinutes();
            var s=today.getSeconds();
            // add a zero in front of numbers<10
            m=checkTime(m);
            s=checkTime(s);
            document.getElementById('time').innerHTML=h+":"+m+":"+s;
            t=setTimeout(function(){startTime()},500);
        }

        function checkTime(i)
        {
            if (i<10)
            {
                i="0" + i;
            }
            return i;
        }
    </script>
 
  

</body></html>