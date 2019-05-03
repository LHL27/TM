<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    	<title>注册页面</title>
 	 	<link rel="stylesheet" href="css/Register.css" type="text/css"></link>
 	 	<script type="text/javascript">
 	 		function show(menu){
 	 			document.getElementById(menu).style.visibility="visible";
 	 		}
 	 		function hide(){			//全部隐藏
 	 			document.getElementById("spaceName").style.visibility="hidden";
 	 			document.getElementById("spacePwd").style.visibility="hidden";
 	 			document.getElementById("spaceRepwd").style.visibility="hidden";
 	 			document.getElementById("pwdAndRepwd").style.visibility="hidden";
 	 			document.getElementById("spacePhone").style.visibility="hidden";
 	 			document.getElementById("illawLengthPhone").style.visibility="hidden";
 	 			document.getElementById("illawFormPhone").style.visibility="hidden";
 	 			document.getElementById("spaceEmail").style.visibility="hidden";
 	 			document.getElementById("illawEmail").style.visibility="hidden";
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
 	 			if (form1.repwd.value == ""){            	//确认密码
 	 				show('spaceRepwd');      
 	 				form1.repwd.focus();      
 	 				return false;     
 	 			}    
 	 			if (form1.pwd.value != form1.repwd.value){     
 	 				show('pwdAndRepwd');     
 	 				form1.repwd.focus();      
 	 				return false;     
 	 			}
 	 			
 	 			if(form1.phone.value.length!=0){			//手机号码	
 	 				for(i=0;i<form1.phone.value.length;i++){
 	 					if(form1.phone.value.charAt(i)<'0' || form1.phone.value.charAt(i)>'9'){
 	 						show('illawFormPhone');
 	 						form1.phone.focus();
 	 						return false;
 	 					}
 	 				}
 	 				if(form1.phone.value.length!=11){	
 	 					show('illawLengthPhone');
 	 					form1.phone.focus();
 	 					return false;
 	 				}
 	 			}else{
 	 				show('spacePhone'); 
 	 				form1.phone.focus();
 	 				return false;
 	 			}
 	 			
 	 			if (form1.email.value.length!= 0){   				//邮箱
 	 				if(!form1.email.value.endsWith("@qq.com")){
 	 					show('illawEmail');
 	 					form1.email.focus();
 	 					return false;
 	 				}  
 	 			}   
 	 			else{         
 	 				show('spaceEmail'); 
 	 				form1.email.focus();   
 	 				return false; 
 				} 
 				form1.submit(); 	//提交表单
 				return true; 
 			} 
 			
 	 		function changeBackgroundColorToGreen(menu){
 	 			document.getElementById(menu).style.backgroundColor='green';
 	 		}
 	 		function changeBackgroundColorToBlue(menu){
 	 			document.getElementById(menu).style.backgroundColor='#49afcd';
 	 		}
 	 	</script>
  </head>
  
  <body>
    	<div class="background">		<!-- 背景div -->
    		<div class="registerForm">
    			<div class="Admin">ADMIN</div>		<!-- 第1行内容 -->
    			 <form action="ZhuCe" method="post" class="formInput" name="form1" onsubmit="retutn false">	
    			 	<div class="name">				<!-- 第2行内容 -->
    					<div>
    						用户
    					</div>
    					<input type="text" name="userName" placeholder="请输入用户名">
    				</div>
    				<div class="pwd">		<!-- 第3行内容 -->
    					<div>
    						密码
    					</div>
    					<input type="password" name="pwd" placeholder="请输入密码">
    				</div>
    				<div class="repwd">			<!-- 第4行内容 -->
    					<div>
    						重输
    					</div>
    					<input type="password" name="repwd" placeholder="请重新输入密码">
    				</div>
    				<div class="phone">		<!-- 第5行内容 -->
    					<div>
    						手机
    					</div>
    					<input type="text" name="phone" placeholder="请输入手机号码">
    				</div>
    				<div class="email">		<!-- 第6行内容 -->
    					<div>
    						邮箱
    					</div>
    					<input type="text" name="email" placeholder="请输入邮箱">
    				</div>
    				<hr class="blackHr" color="#000">
    				<div class="action">		<!-- 第7行内容 -->
    					<input type="reset" value="重置"  id="myReset" onmousemove="changeBackgroundColorToGreen('myReset')" onmouseout="changeBackgroundColorToBlue('myReset')">
    					<input type="button" value="注册" id="mySubmit" onmousemove="changeBackgroundColorToGreen('mySubmit')" onmouseout="changeBackgroundColorToBlue('mySubmit')" onclick="return check()">
    				</div>
    			 </form>
    		</div>
    	</div>
    	<!-- 提示框的内容，隐藏，绝对布局 -->
    	<div id="spaceName">
    		输入用户名
    	</div>
    	<div id="spacePwd">
    		输入密码
    	</div>
    	<div id="spaceRepwd">
    		输入确认密码
    	</div>
    	<div id="pwdAndRepwd">
    		两次密码不相同
    	</div>
    	<div id="spacePhone">
    		输入手机号码
    	</div>
    	<div id="illawLengthPhone">
    		号码长度非法
    	</div>
    	<div id="illawFormPhone">
    		号码含非数字
    	</div>
    	<div id="illawEmail">
    		非法邮箱
    	</div>
    	<div id="spaceEmail">
    		输入邮箱
    	</div>
  </body>
</html>
