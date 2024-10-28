<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
    String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	        .Header {background: url(<%=path %>/img/001.jpg) #d10e00 repeat-x left top; height: 120px;}
	        .HeaderTop {margin: 0px auto;}
    </style>
	
	<script type="text/javascript">
	    function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
	</script>
	
  </head>
  
  <body>
      <div class="Header HeaderTop" style="width: 925px;">
            <div class="list_bar">
				 <span style="float:left;font-size: 30px;color: black;font-weight: bolder;display: block;text-align: left;margin-top: 38px;margin-left: 20px;">
				     医院挂号预约系统
				 </span>
				 <span style="float:right;font-size: 20px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 50px;margin-right: 10px;">			    
				     <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
                 </span>
			</div>
	  </div>
      
      <c:if test="${sessionScope.userType==2}">
      <div class="nav" style="margin-top:2px;" align="center">
			<ul style="margin-left: 2px;">
				<li style="width: 130px;">
					<font face="微软雅黑" size="4" color="#000000"><a href="<%=path %>/auser/userinfo/userinfo.jsp" target="I2">修改我的信息</a></font>
				</li>
				<li style="width: 130px;">
					<font face="微软雅黑" size="4" color="#000000"><a href="<%=path %>/guahaoMana_user.action" target="I2">我的挂号信息</a></font>
				</li>
			</ul>
      </div>
      </c:if>
      
      
  </body>
</html>
