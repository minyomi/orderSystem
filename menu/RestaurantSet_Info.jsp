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
            

          
                <div id="time">22:18:52</div>  
            
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             餐饮店信息设置
                          </header>
                          <div class="panel-body">
                              <form role="form" class="form-horizontal tasi-form" action="SetRestaurant" method="post">
                                  <div class="form-group has-success">
                                      <label class="col-lg-2 control-label">餐饮店名称</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder="" id="f-name" class="form-control" name="name">
                                      </div>
                                  </div>
								                                 
                                      <div class="form-group has-error">
                                      <label class="col-lg-2 control-label">餐饮店电话</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder=""  class="form-control" name="phone">                                          
                                      </div>
                                  </div>  
                                  <div class="form-group has-success">
                                      <label class="col-lg-2 control-label">餐饮店地址</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder=""  class="form-control" name="address">                                          
                                      </div>
                                  </div>   
                                  
                                  <div class="form-group has-error">
                                      <label class="col-lg-2 control-label">餐饮店介绍</label>
                                      <div class="col-lg-10">
                                          <input type="text" placeholder=""  class="form-control" name="descripe">                                         
                                      </div>
                                  </div>  
                                  <div class="form-group">
                                     <label class="col-lg-2 control-label">餐饮店图标</label>
									  <div class="col-lg-10">
                                      <input type="file" id="exampleInputFile">
                                      <p class="help-block">导入图片</p>
                                 </div>
                                  </div>								  
                                  <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                          <button class="btn btn-danger" type="submit">保存</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </section>
                  </div>
              </div>                          
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