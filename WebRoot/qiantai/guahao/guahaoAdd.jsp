<%@page import="java.text.SimpleDateFormat"%>
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
    
    <link rel="stylesheet" href="<%=path %>/jquery/ui.datepicker.css" type="text/css" media="screen"  charset="utf-8" />
	
	<script src="<%=path %>/jquery/jquery-1.2.6.js" type="text/javascript" charset="utf-8"></script>	
	<script src="<%=path %>/jquery/ui.datepicker.js" type="text/javascript" charset="utf-8"></script>	
	<script src="<%=path %>/jquery/ui.datepicker-zh-CN.js" type="text/javascript" charset="utf-8"></script>	
   
    <script type="text/javascript">
            jQuery(function($){
			$('#datepicker').datepicker({
					yearRange: '1900:2099', //取值范围.
					showOn: 'both', //输入框和图片按钮都可以使用日历控件。
					buttonImage: '<%=path %>/jquery/calendar.gif', //日历控件的按钮
					buttonImageOnly: true,
					showButtonPanel: true
				});	
				
			});
			
			function cx()
            {
                
                    if(document.form2.riqi.value=="")
	                {
	                    alert("请输入挂号日期");
	                    return false;
	                }
	                
	                
	                var jinri="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>";
			        var guahaori=document.form2.riqi.value;
			        
			        if(Date.parse(jinri.replace("-","/")) >= Date.parse(guahaori.replace("-","/")))
				    {
					    alert("挂号日期只能是今日以后的日期");
					    return false;
				    }
				    
				    var s=DateDiff(jinri,guahaori)
				    if(s>7)
				    {
				        alert("只能挂号未来7天的日期");
					    return false;
				    }
	                
	                
	                if(document.form2.jibing.value=="")
	                {
	                    alert("请输入所患疾病");
	                    return false;
	                }
	                if(document.form2.xingming.value=="")
	                {
	                    alert("请输入你的姓名");
	                    return false;
	                }
	                document.form2.submit();
               
            }
			
			
			function DateDiff(sDate1, sDate2)
			{  
				    var aDate, oDate1, oDate2, iDays 
				    aDate = sDate1.split("-"); 
				    oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]);  //转换为mm-dd-yyyy格式 
				    aDate = sDate2.split("-"); 
				    oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]); 
				    iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 /24);  //把相差的毫秒数转换为天数 
				    //alert(iDays);
				    return iDays ; 
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
						<h2 class="title"><a href="#">在线挂号</a></h2>
						<div class="entry">
						    <form action="<%=path %>/guahaoAdd.action" name="form2" method="post">
				               <table align="left" border="0" cellpadding="9" cellspacing="9">
									<tr align='center'>
										<td style="width: 60px;" align="left">
											挂号日期：										    
										</td>
										<td align="left">
											<input name="riqi" type="text" style="width: 200px;" id="datepicker" readonly="readonly" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Date().getTime()+1*24*60*60*1000)) %>"/>
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="left">
											所患疾病：										    
										</td>
										<td align="left">
											<input name="jibing" type="text" style="width: 200px;"/>
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="left">
											你的姓名：										    
										</td>
										<td align="left">
											<input name="xingming" type="text" style="width: 200px;"/>
										    
										</td>
									</tr>
									<tr align='center'>
										<td style="width: 60px;" align="left">
											联系方式：										    
										</td>
										<td align="left">
											<input name="lianxi" type="text" style="width: 200px;"/>
										    
										</td>
									</tr>
									<tr align='center'>
									   <td style="width: 60px;" align="left"></td>
									   <td align="left">
									      <input type="hidden" name="zhuanjiaId" value="<%=request.getParameter("zhuanjiaId") %>">
									      <input type="button" value="确定" onclick="cx()"/>&nbsp; 
									      <input type="reset" value="重置"/>&nbsp;	
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
