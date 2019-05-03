<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   	<title>登录页面</title>
  	<link rel="stylesheet" href="css/Login.css" type="text/css"></link>
  	<script type="text/javascript">
  		function changeTextColorToRed(menu){			/*使字体颜色变红*/
  			document.getElementById(menu).style.color='#f00';
  		}
  		function changeTextColorToBlack(menu){			/*使字体颜色变黑*/
  			document.getElementById(menu).style.color='#000';
  		}
  		function changeBackgroundColorToRed1(menu){		/*使背景颜色变浅红*/
  			document.getElementById(menu).style.backgroundColor="#f99";
  		}
  		function changeBackgroundColorToRed2(menu){		/*使背景颜色变深红*/
  			document.getElementById(menu).style.backgroundColor="#f00";
  		}
  		function hide(){		//隐藏div
  			document.getElementById("TiShi").style.visibility="hidden";
  			document.getElementById("spaceName").style.visibility="hidden";
  			document.getElementById("spacePwd").style.visibility="hidden";
  			document.getElementById("nameAndPwd").style.visibility="hidden";
  		}
  		function show(menu){
 	 		document.getElementById(menu).style.visibility="visible";
 	 	}
  		function check()  {						//验证提交数据的合法性   
 	 		hide();				//隐藏上次的提示
 	 		if (form1.userName.value == ""){      	//用户名
 	 			show('spaceName');     
 	 			form1.userName.focus();      
 	 			return false;     
 	 		}     
 	 		if (form1.pwd.value == ""){           	//密码 
 	 			show('spacePwd');  			     
 	 			form1.pwd.focus();      
 	 			return false;     
 	 		}   
  			show("TiShi");
  			form1.submit(); 	//提交表单
 			return true; 
 		} 
  	</script>
  </head>
  
  <body>
    <div class="loge">
    	<a href="top.jsp"><img src="Image/TB.png" title="天猫Tmall.com" alt="天猫loge" class="loge-img"></img></a>
    </div>
    <div class="picture">
    	<a href="#"></a>
    	<div class="Loginbord">
			<div id="TiShi">密码登录</div>
						
			<form action="DengLu" name="form1" onsubmit="retutn false">
				<img src="Image/people1.jpg"></img>
				<input type="text" name="userName" class="userName" placeholder="请输入用户名">
				<img src="Image/lock1.jpg"></img>
				<input type="password" name="pwd" class="pwd" placeholder="请输入密码">
				<input type="button" value="登录" id="dengLu" onmousemove="changeBackgroundColorToRed1('dengLu')" onmouseout="changeBackgroundColorToRed2('dengLu')" onclick="return check()">
			</form>
			<div class="server">
				<a href="#"><div id="serverOfUser1" onmousemove="changeTextColorToRed('serverOfUser1')" onmouseout="changeTextColorToBlack('serverOfUser1')">忘记密码</div></a>
				<a href="#"><div id="serverOfUser2" onmousemove="changeTextColorToRed('serverOfUser2')" onmouseout="changeTextColorToBlack('serverOfUser2')">忘记用户名</div></a>
				<a href="Register.jsp"><div id="serverOfUser3" onmousemove="changeTextColorToRed('serverOfUser3')" onmouseout="changeTextColorToBlack('serverOfUser3')">免费注册</div></a>
			</div>
		</div>
    </div>
    <!-- 隐藏提示div -->
    <div id="spaceName">输入用户名</div>
    <div id="spacePwd">输入密码</div>
    <div id="nameAndPwd">用户名与密码不匹配</div>
  </body>
</html>
