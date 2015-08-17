<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="cn.mos1.bean.*" %>
<%@ page import="java.sql.Timestamp" %>

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
                          <header class="panel-heading">
                              未受理订单列表
                          </header>
                          <table class="table table-striped table-advance table-hover">
                          <% Order order=(Order)request.getAttribute("order");
                          Timestamp date=order.getDatetime();
                            String status=order.getStatus();
                            float price=order.getTotal_price();
                            int id=order.getId();
                          %>
                          <td><tr>订单号:<%=id%></tr></td>
                          <td><tr>状态：<%=status %></tr></td>
                          <td><tr>总价<%=price %></tr></td>
                          <td><tr>时间<%=date%></tr></td>
                              <thead>
                              <tr>
                                  <th>菜品名</th>
                                  <th>单价</th>
                                  <th>数量</th>
                                  <th><i class=" icon-edit"></i>操作</th>
                              </tr>
                              </thead>
                              <tbody>
                               <%
     List<OrderInfo> orderinfos=(List<OrderInfo>)request.getAttribute("orderinfos");
     List<DishItem> dishs=(List<DishItem>)request.getAttribute("dishs");                          
     Iterator<OrderInfo> it=orderinfos.iterator();
     Iterator<DishItem> it2=dishs.iterator();
     
     while(it.hasNext()&&it2.hasNext())
     {
    	OrderInfo orderinfo=it.next();
    	DishItem dish=it2.next();
     %>
                              <tr>
                                  <td><%=orderinfo.getDishItem_name()%></td>
                                  <td><%=dish.getPrice() %></td>                                
                                  <td><%=orderinfo.getDish_numbers() %></td>
                                  <td>                                      
                            
                                                                 								
                                  </td>
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
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <script src="js/jquery.customSelect.min.js" ></script>
    <script src="js/respond.min.js" ></script>

    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/count.js"></script>
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
  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  

</body></html>