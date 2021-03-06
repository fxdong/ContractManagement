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
    
    <title>合同修改</title>
    
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
    
    <style type="text/css">
    .my_right_col{
    	min-height: 3825px;
    	padding: 10px 20px 0;
		margin-left: 230px;
		background: #F7F7F7;
    }
    </style>
  </head>
  
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      	<div class="col-md-3 left_col menu_fixed mCustomScrollbar _mCS_1 mCS-autoHide" style="overflow: visible;">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>首页</span></a>
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
        <div class="right_col" role="main" style="min-height: 100%;">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>合同修改 </h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>合同信息 </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="editContract" action="contract/updateContract" method="psot" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >合同名称 <span class="required">*</span>
                        </label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input type="text" id="contractName" required="required" class="form-control col-md-7 col-xs-12" name="contractName" value="${ContractInfo.contractName }">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >合同类型 <span class="required">*</span>
                        </label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input type="text" id="contractType" name="contractType" required="required" class="form-control col-md-7 col-xs-12" value="${ContractInfo.contractType }">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">电话号码</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="phoneNumber" class="form-control col-md-4 col-xs-12" type="text" name="phoneNumber" value="${userInfo.phoneNumber }">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">电子邮箱</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="email" class="form-control col-md-4 col-xs-12" type="text" name="email" value="${userInfo.email }">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">所属公司</label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                          <input id="company" class="date-picker form-control col-md-7 col-xs-12" type="text" name="company" value="${userInfo.company }">
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
    <!-- bootstrap-progressbar -->
    <script src="resources/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="resources/plugins/moment/min/moment.min.js"></script>
    <script src="resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="resources/plugins/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="resources/plugins/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="resources/plugins/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="resources/plugins/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="resources/plugins/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="resources/plugins/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="resources/plugins/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="resources/plugins/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="resources/plugins/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="resources/plugins/starrr/dist/starrr.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="resources/plugins/custom/js/custom.min.js"></script>
    
    <script type="text/javascript">
    $(function(){
    	$("#submit-btn").click(function(){
    		$.ajax({
    			type:"post",
    			url:"contract/updateContract",
    			data:$("#editContract").serialize(),
    			dataType:"json",
    			success:function(data){
    				if(data.resultCode==1){
    					alert("修改成功");
    					window.location.href="contract/getContractList";
    				}else{
    					alert("修改失败");
    					window.location.href="contract/getContractList";
    				}
    			}
    		});
    	});
    });
    </script>
  </body>
</html>