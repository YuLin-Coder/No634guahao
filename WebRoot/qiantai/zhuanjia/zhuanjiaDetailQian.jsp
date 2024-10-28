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
    
    <script type="text/javascript">
        function cx(zhuanjiaId)
        {
            <c:if test="${sessionScope.userType !=2 }">
                alert("请先登录");
	        </c:if>
	        <c:if test="${sessionScope.userType ==2 }">
                var url="<%=path %>/qiantai/guahao/guahaoAdd.jsp?zhuanjiaId="+zhuanjiaId;
                window.location.href=url;
	        </c:if>
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
						<div class="entry">
						    <form action="<%=path %>/qiantai/guahao/guahaoAdd.jsp" name="formwww" method="post">
				              <TABLE class=main border=0 cellSpacing=0 cellPadding=0 height=115 style="margin-top: 10px;margin-left: 10px;">
					              <TR>
					                  <td valign="top">
					                      <fieldset style="width:160px; height: 200px;"><legend class="fieldtitle">专家照片</legend>
												<table class="bill" width="97%">
												    <tr>
												        <td><IMG border=0 align=absMiddle src="<%=path %>/${requestScope.zhuanjia.fujian}" width=130 height=160></td>
												    </tr>
												</table>
										  </fieldset>
					                  </td>
					                  <td></td>
					                  <td valign="top">
					                      <fieldset style="margin-left:5px;height: 100%;"><legend class="fieldtitle">个人信息</legend>
												<table class="bill" width="420" cellpadding="5" cellspacing="5">
												    <tr>
												        <td>姓名：${requestScope.zhuanjia.xingming}</td>
												    </tr>
												    <tr>
												        <td>性别：${requestScope.zhuanjia.xingbie}</td>
												    </tr>
												    <tr>
												        <td>年龄：${requestScope.zhuanjia.nianling}</td>
												    </tr>
												    <tr>
												        <td>擅长：${requestScope.zhuanjia.shanchang}</td>
												    </tr>
												    <tr>
												        <td>类型：${requestScope.zhuanjia.leixing}</td>
												    </tr>
												    <tr>
												        <td>医院：${requestScope.zhuanjia.yiyuan.mingcheng}</td>
												    </tr>
												    <tr>
												        <td>科室：${requestScope.zhuanjia.keshi.keshiAnme}</td>
												    </tr>
												    <tr>
												        <td>
												            <input type="button" value="挂号" style="width: 80px;" onclick="cx(${requestScope.zhuanjia.id})"/>&nbsp; 
												        </td>
												    </tr>
												</table>
										  </fieldset>
					                  </td>
					              </TR>
				              </TABLE>
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
