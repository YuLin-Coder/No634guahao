<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	</script>
    
    <style type="text/css">
        .login_form
        {
			width:600px;
			height:250px;
			background:url(/guahao/images/login_bg.png) no-repeat center top;
			margin:20px 0 0 145px;
			float:left;
			padding:0px 0 0 0px;
		}
		
        body
		{
			background:url(/guahao/images/bg.jpg) no-repeat center top #310b28;
			font-family:Arial, Helvetica, sans-serif;
			padding:0;
			font-size:12px;
			margin:0 auto;
			color: #0e4354;
		}
		
		
		#main_container
		{
			margin:0 auto;
			width:900px;
			padding:0px 0 0px 0;
		}
        
    </style>
  </head>
  
  <body>
<div id="main_container">

	<div class="header_login">
    <div class="logo"  style="height: 130px;"></div>
    
    </div>

     
         <div class="login_form">
         
         <h3></h3>
         
         <a href="#" class="forgot_pass"></a> 
         
         <form action="" method="post" class="niceform" name="ThisForm">
         
                <table align="center" border="0" cellpadding="2" cellspacing="2" style="margin-top: 50px;">
                    <tr align='center' style="height: 30px;">
						<td style="width: 60px;" align="center">
							账号：										    
						</td>
						<td align="left">
							<input name="userName" type="text" style="width: 200px;"/>
						</td>
					</tr>
					<tr align='center' style="height: 30px;">
						<td style="width: 60px;" align="center">
							密码：										    
						</td>
						<td align="left">
							<input name="userPw" type="text" style="width: 200px;"/>
						</td>
					</tr>
<!-- 					<tr align='center' style="height: 30px;">
						<td style="width: 60px;" align="center">
							类型：										    
						</td>
						<td align="left">
							<select name="userType" style="width: 205px;">
								<option value="0">管理员</option>
								<option value="1">卖&nbsp;&nbsp;&nbsp;家</option>	
							</select> 
						</td>
					</tr>
 -->					<tr align='center'>
					   <td style="width: 60px;" align="center"></td>
					   <td align="left">
					      <input type="button" value="登陆" style="width: 80px;" onclick="check1()"/>&nbsp; 
					      <input type="reset" value="重置" style="width: 80px;"/>&nbsp;	
					      <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
					   </td>
					</tr>
                </table>
                
         </form>
         </div>  
          
	
    
    

</div>		
</body>
</html>
