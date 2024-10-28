<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <script language="JavaScript" type="text/javascript">
        function check2()
	    {
	        if(document.form1.userName.value=="")
	        {
	            alert("请输入账号");
	            return false;
	        }
	        if(document.form1.userPw.value=="")
	        {
	            alert("请输入密码");
	            return false;
	        }
	        document.form1.submit();
	    }
    </script>
    
  </head>
  
  <body>
	<jsp:include flush="true" page="/qiantai/inc/top.jsp"></jsp:include>
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<!-- <div class="post">
						<h2 class="title"><a href="#">企业介绍</a></h2>
						<p class="meta">我们企业在青岛市</p>
						<div class="entry">
							<p>订单嘎嘎嘎嘎嘎嘎嘎嘎嘎个te designed by FreeCssTemplree template is rse, so you’re prd you keep the links in the footer intact. Aside from that, have fun wi</p>
							<p>Sibus semper urna. Pellentesque ornare, orci in felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.</p>
						</div>
					</div> -->
					<div class="post">
						<h2 class="title"><a href="#">用户注册</a></h2>
						<div class="entry">
						    <form action="<%=path %>/userReg.action" name="form1" method="post">
								 <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
									<tr>
										<td width="14%" height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											账号：
										</td>
										<td width="86%" bgcolor="#FFFFFF">
											&nbsp;
											<input type="text" name="userName" style="width: 250px;"/>
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											密码：
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="password" name="userPw" style="width: 250px;" value="000000"/>(默认：000000)
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											姓名：
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="text" name="userRealname" style="width: 250px;"/>
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											住址：
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="text" name="userAddress" size="50" style="width: 250px;"/>
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											电话：
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="text" name="userTel" style="width: 250px;"/>
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9" style="font-size: 11px;">
											邮箱：
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="text" name="userEmail" style="width: 250px;"/>
										</td>
									</tr>
									<tr>
										<td height="30" align="center" bgcolor="#F9F9F9">
											&nbsp;
										</td>
										<td bgcolor="#FFFFFF">
											&nbsp;
											<input type="button" value="确定" onclick="check2();"/>
											<input type="reset" value="重置"/>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				    <div style="clear: both;">&nbsp;</div>
		        </div>
				<jsp:include flush="true" page="/qiantai/inc/right.jsp"></jsp:include>
				<div style="clear: both;">&nbsp;</div>	
		    </div>
		</div>
	</div>
	
	
	
	<div id="footer-wrapper">
		<div id="footer">
			<p>Copyright (c) 2008 Sitename.com. All rights reserved. Design by <a href="<%=path %>/login.jsp">系统管理员登陆</a>.</p>
		</div>
	</div>
  </body>
</html>
