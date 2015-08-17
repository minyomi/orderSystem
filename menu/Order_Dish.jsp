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
<jsp:include page="jsphead1.jsp"></jsp:include>
                                 
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
            

              <div class="row">
                <div id="time">22:18:52</div>                   
              </div>
              <section class="panel">
  <form action="DianCai2" method="post">
                          <header class="panel-heading">
                              <strong>点菜</strong>
                          </header>
                          <table class="table table-striped table-advance table-hover">
                 
                              <thead>
                              <tr>
                                  <th> 菜品名</th>
                                  <th>菜品价格</th>
								  <th>菜品数量</th>
                                  <th><i class=" icon-edit"></i>操作</th>
                              </tr>
                              </thead>
                              <tbody>
                                <%
                                  int i=0;
                                  List<DishItem> dishItems=(List<DishItem>)request.getAttribute("dishItems");
                                  Iterator<DishItem> it=dishItems.iterator();
                                  while(it.hasNext())
                                  {
                                	  i++;
                                	  String s1="account"+i;
                                	  String s2="flag"+i;
    	                          DishItem dishItem=it.next();
                                  %>
                              <tr>
                                  <td><%=dishItem.getName() %></td>
                                  <td><%=dishItem.getPrice() %></td>	
								  <td><select name="<%=s1%>">
                                    <option  class="active" value="0">0</option>
									 <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    </select>
									</td>
                                  <td>                                      
								    
									  <input type="hidden" name="<%=i%>" value="<%=dishItem.getId()%>"></input>
									  <input type="checkbox" name="<%=s2%>" value="1" ></input>
									  
                                  </td>
                              </tr>
                            <%
                            }
                            %>
                              </tr>
                             <input type="hidden" name="account" value="<%=i%>"></input>
                            
                              </tbody>
                          </table>
                      </section>
               <button class="btn btn-danger" type="submit">确定</button>
               </form>
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

          </section>
      </section>
      <!--main content end-->
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

  

</body>
</html>