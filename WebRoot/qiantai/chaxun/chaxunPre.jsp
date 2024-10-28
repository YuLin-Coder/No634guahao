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
    
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
    <script language="JavaScript" type="text/javascript">
        function c()
        {
             if(document.formAdd.keshiId.value=="")
             {
                 alert("请选择所在科室");
                 return false;
             }
             
             document.formAdd.submit();
        }
        
        var i=0;
           function keshiAll()
           {
               if(i==0)
               {
                   document.getElementById("indicator").style.display="block";
                   loginService.keshiAll(callback);
                   i=1;
               }
               
           }
           function callback(data)
           {
               document.getElementById("indicator").style.display="none";
               DWRUtil.addOptions("keshiId",data,"keshiId","keshiAnme");
           }
           
           function init()
           {
              loginService.yiyuanAll(callback1);
           }
           function callback1(data)
           {
               DWRUtil.addOptions("yiyuanId",data,"id","mingcheng");
           }
    </script>
    
  </head>
  
  <body onload="init()">
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
						    <form action="<%=path %>/zhuanjiaRes.action" name="formAdd" method="post">
						    <fieldset style="width:95%; margin-center:5px;"><legend class="fieldtitle">出售信息</legend>
								<table align="center" border="0" cellpadding="2" cellspacing="2">
									<tr align='center'>
										<td style="width: 60px;" align="center">
											医院：										    
										</td>
										<td align="center">
											<select name="yiyuanId" id="yiyuanId" style="width: 235px;">
					                
					                        </select>
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="center">
											科室：<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>									    
										</td>
										<td align="center">
											<select name="keshiId" id="keshiId" onclick="keshiAll()" style="width: 235px;">
					                        </select>
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="center">
											类型：										    
										</td>
										<td align="center">
											<select name="leixing" id="leixing" style="width: 235px;">
								                 <option value="专家门诊">专家门诊</option>
								                 <option value="普通门诊">普通门诊</option>
								            </select>
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="center">
											姓名：										    
										</td>
										<td align="center">
											<input type="text" name="xingming" style="width: 235px;"/>
										</td>
									</tr>
									<tr align='center'>
									   <td style="width: 60px;" align="center"></td>
									   <td align="center">
									      <input type="button" value="查询" onclick="c()"/>&nbsp; 
									      <input type="reset" value="重置"/>&nbsp;	
									   </td>
									</tr>
								</table>
						    </fieldset>
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
