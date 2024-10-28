<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/qiantai.css" rel="stylesheet" type="text/css" media="screen" />

    <script type="text/javascript">
	        function userReg()
	        {
	            var url="<%=path %>/qiantai/userinfo/userReg.jsp";
	            window.location.href=url;
	        }
    </script>
    
  </head>
  
  <body>
	<div id="menu1">
	    <br/><br/><br/><br/>
		<div style="font-size:30px;margin-left: 20px;color: black">医院挂号预约系统</div>
	</div>
	<div id="menu">
		<ul>
			<li><a href="<%=path %>/yiyuanAll.action" style="font-size: 15px;font-family: 微软雅黑;">系统首页</a></li>
			<li><a href="<%=path %>/qiantai/chaxun/chaxunPre.jsp" style="font-size: 15px;font-family: 微软雅黑;">医生查询</a></li>
			<li><a href="<%=path %>/gonggaoAll.action" style="font-size: 15px;font-family: 微软雅黑;">公告信息</a></li>
			<li><a href="#" onClick="userReg()" style="font-size: 15px;font-family: 微软雅黑;">用户注册</a></li>
		</ul>
	</div>
  </body>
</html>
