<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<link href="<%=path %>/css/default.css"" type="text/css" rel="stylesheet">
	<link href="<%=path %>/css/style.css"" type="text/css" rel="stylesheet">
	<link href="<%=path %>/css/admin.css" type="text/css" rel="stylesheet">
	

	<script type="text/javascript">
	
	</script>
	
  </head>
  
  <body>
      <jsp:include page="/auser/top.jsp"></jsp:include>      
      <table border="0" width="927" height="500" background="<%=path %>/img/bg.jpg">
         <tr>
            <td valign="top">
                <iframe name="I2" height="100%" width="100%" frameborder="0" style="margin-left: 0px;" src="<%=path %>/admin/index/sysPro.jsp"> 
				  浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
			    </iframe>
	   	    </td>
	   	 </tr>
	  </table>
  </body>
</html>
