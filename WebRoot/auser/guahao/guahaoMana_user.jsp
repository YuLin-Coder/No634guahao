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
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
	
      
    <script type="text/javascript">
          
    </script>
  </head>
  
  <BODY leftMargin=9 topMargin=9 bgColor=#ffffff>
        
		               <c:forEach items="${requestScope.guahaoList}" var="guahao" varStatus="sta">
		               <fieldset style="width:95%; margin-left:5px;"><legend class="fieldtitle"></legend>
							<form action="<%=path %>/guahaoDel.action" name="111" method="post">
							<table class="bill" width="97%" cellpadding="3" cellspacing="3">
							    <tr>
							        <td>挂号专家：${guahao.zhuanjia.xingming}</td>
							    </tr>
							    <tr>
							        <td>挂号时间：${guahao.riqi}</td>
							    </tr>
							    <tr>
							        <td>所患疾病：${guahao.jibing}</td>
							    </tr>
							    <tr>
							        <td>你的姓名：${guahao.xingming}</td>
							    </tr>
							    <tr>
							        <td>
							             联系方式：${guahao.lianxi}
							            <input type="hidden" name="id" value="${guahao.id}">
							            <input type="submit" value="取消挂号" style="width: 80px;"/>
							        </td>
							    </tr>
							</table>
							</form>
					   </fieldset>
					   <br/>
					   </c:forEach>
  </BODY>
</html>
