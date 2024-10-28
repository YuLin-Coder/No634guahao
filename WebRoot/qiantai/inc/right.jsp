<%@ page language="java" pageEncoding="UTF-8"%>
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
	
  </head>
  
  <body>
	  <div id="sidebar">
			<ul>
				<li>
					<!-- <h2>用户登陆</h2> -->
					<p>
					   <jsp:include flush="true" page="/qiantai/userinfo/userLogin.jsp"></jsp:include>
					</p>
				</li>
				<li>
					<h2>联系我们</h2>
					<ul>
						<li><a href="#">电话：021-78956524</a></li>
						<li><a href="#">地址：上海市浦东新区305</a></li>
					</ul>
				</li>
			</ul>
	  </div>
  </body>
</html>
