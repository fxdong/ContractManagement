<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contract" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Bootstrap -->
    <link href="resources/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <%-- <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"> --%>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/plugins/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="resources/plugins/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="resources/plugins/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="resources/plugins/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="resources/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="resources/plugins/custom/css/custom.min.css" rel="stylesheet">
  </head>
  
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      	<div class="col-md-3 left_col menu_fixed mCustomScrollbar _mCS_1 mCS-autoHide" style="overflow: visible;">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="home" class="site_title"><i class="fa fa-paw"></i> <span>首页</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <jsp:include page="../menuProfile.jsp"></jsp:include>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <jsp:include page="../sideMenu.jsp"></jsp:include>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <jsp:include page="../menuFooter.jsp"></jsp:include>
            <!-- /menu footer buttons -->
            
         </div>
        </div>   
        <!-- top navigation -->
        <jsp:include page="../topNavigation.jsp"></jsp:include>
        <!-- /top navigation -->
	        
        <!-- page content -->
        <div class="right_col" role="main">
    	  <div class="">
    	    <div class="clearfix"></div>
    		<div class="row">
    		  <div class="col-md-12">
    		    <div class="x_panel">
    		      <div class="x_title">
    		        <h2>新增用户</h2>
    		        <div class="clearfix"></div>
    		      </div>
    		      <div class="x_content">
    		        <form id="addUser" action="user/addUser" method="psot" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >用户名 <span class="required">*</span>
                        </label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="first-name" name="userName"  
                          		type="text" required="required" class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >真实姓名 <span class="required">*</span>
                        </label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input type="text" id="last-name" name="realName" required="required" class="form-control col-md-7 col-xs-12" name="realName" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">性别</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="0"> 男 
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="1"> 女
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">电话号码</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="phoneNumber" class="form-control col-md-4 col-xs-12" type="text" name="phoneNumber" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">电子邮箱</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="email" class="form-control col-md-4 col-xs-12" type="text" name="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">所属公司</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="company" class="date-picker form-control col-md-7 col-xs-12" type="text" name="company">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">用户角色</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <select class="form-control" name="roleId">
                            <option value="">请选择</option>
                            <option value="1" <c:if test="${userInfo.roleId==1 }">selected="selected"</c:if>>系统管理员</option>
                            <option value="2" <c:if test="${userInfo.roleId==2 }">selected="selected"</c:if>>采购员</option>
                            <option value="3" <c:if test="${userInfo.roleId==3 }">selected="selected"</c:if>>采购经理</option>
                            <option value="4" <c:if test="${userInfo.roleId==4 }">selected="selected"</c:if>>财务审核员</option>
                            <option value="5" <c:if test="${userInfo.roleId==5 }">selected="selected"</c:if>>法务审核员</option>
                            <option value="6" <c:if test="${userInfo.roleId==6 }">selected="selected"</c:if>>CEO</option>
                          </select>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button">Cancel</button>
						  <button class="btn btn-primary" type="reset">Reset</button>
                          <button id="submit-btn" type="button" class="btn btn-success">Submit</button>
                        </div>
                      </div>
					  <input type="hidden" name="userId" value="${userInfo.userId }">
                    </form>
    		      </div>
    		    </div>
    		  </div>
    		</div>
    	  </div>
       	<!-- /page content -->
       	
       	<!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by Colorlib. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
    <!-- jQuery -->
    <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/plugins/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/plugins/nprogress/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="resources/plugins/custom/js/custom.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	$("#submit-btn").click(function(){
    		$.ajax({
    			type:"post",
    			url:"user/addUser",
    			data:$("#addUser").serialize(),
    			dataType:"json",
    			success:function(data){
    				if(data.resultCode==1){
    					alert("修改成功");
    					window.location.href="user/getUserList";
    				}else{
    					alert("修改失败");
    					window.location.href="user/getUserList";
    				}
    			}
    		});
    	});
    });
    </script>
  </body>
</html>