<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="cn.mos1.bean.*" %>
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
                          <header class="panel-heading">
                              员工名单
                          </header>
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th> 姓名</th>
                                  <th>性别</th>
                                  <th> 用户ID</th>
                                  <th>组别</th>
                                  <th><i class=" icon-edit"></i>操作</th>
                              </tr>
                              </thead>
                              <tbody>
                              <%
                                   List<Employee> employees=(List<Employee>)request.getAttribute("employees");
                                   Group group=(Group)request.getAttribute("group");
                                   Iterator<Employee> it=employees.iterator();
                                    while(it.hasNext())
                                    {
    	                              Employee employee=it.next();
                                      %>
                              <tr>
                                  <td><a><%=employee.getName()%></a></td>
                                  <td class="hidden-phone"><%=employee.getSex()%></td>
                                  <td><%=employee.getId()%></td>
                                  <td><%=group.getName() %></td>
                                  <td>
                                  
                                     <a href="DeleteEmployee?id=<%=employee.getId()%>"><button class="btn btn-danger btn-xs tooltips" data-original-title="删除"><i class="icon-trash "></i></button></a> 
									  <a href="CommentEmployee2?id=<%=employee.getId()%>"><button class="btn btn-warning btn-xs tooltips" data-original-title="评论"><i class="icon-comment"></i></button></a>
                                      <a href="ShowComment?id=<%=employee.getId()%>"><button class="btn btn-success btn-xs tooltips" data-original-title="查看评论"><i class="icon-search"></i></button></a>
                                      <button class="btn btn-primary btn-xs tooltips" data-original-title="修改" data-toggle="modal" data-target="#myModal"><i class="icon-pencil" ></i></button>
									  <!-- Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">修改员工</h4>
                                     </div>
                                 <div class="modal-body">
                                <form role="form" class="form-horizontal tasi-form" action="ChangeEmployee" method="post">
                                <input type="hidden" name="id" value="<%=employee.getId()%>">
                                  <div class="form-group has-success">
                                      <label class="col-lg-2 control-label">姓名</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder="" id="f-name" class="form-control" name="new_name">
                                      </div>
                                  </div>
								   <div class="form-group has-error">
                                      <label class="col-lg-2 control-label">性别</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder=""  class="form-control" name="new_sex">                                          
                                      </div>
                                  </div>  
                            
                             <div class="modal-footer">
							 <button type="submit" class="btn btn-primary">保存</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>    
                          </div>
                              </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                             </div><!-- /.modal -->
                            
                                 
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