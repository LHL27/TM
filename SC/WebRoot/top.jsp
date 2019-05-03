<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>导航栏</title>
  	<link rel="stylesheet" href="css/Top.css" type="text/css"></link></head>
  	<script language="javaScript">
  		function changeTextColorToRed(menu){		/*使字体颜色变红和变大*/
  			document.getElementById(menu).style.color='#f99';
  			document.getElementById(menu).style.fontSize='16px';
  		}
  		function changeTextColorToGray(menu){		/*使字体颜色变灰和变小*/
  			document.getElementById(menu).style.color='gray';
  			document.getElementById(menu).style.fontSize='12px';
  		}
  		function changeTextColorToBlack(menu){		/*使字体颜色变黑和变小*/
  			document.getElementById(menu).style.color='black';
  			document.getElementById(menu).style.fontSize='12px';
  		}
  		function changeBackgroundToWhite(menu){		/*使背景颜色变白*/
  			document.getElementById(menu).style.backgroundColor='#fff';
  		}
  		function changeBackgroundToGray(menu){		/*使背景颜色变灰*/
  			document.getElementById(menu).style.backgroundColor='#999999';
  		}
  		function changeBackgroundToRed1(menu){		/*使背景颜色变浅红*/
  			document.getElementById(menu).style.backgroundColor='#f99';
  		}
  		function search(menu){		/*搜索框的变化*/
  			document.getElementById(menu).style.backgroundColor='#ccb7f5';
  			document.getElementById("inputDemo").style.backgroundColor='#f3e848';	
  		}
  		function changeBackgroundToRed2(menu){
  			document.getElementById(menu).style.backgroundColor='#f00';
  			document.getElementById("inputDemo").style.backgroundColor='#fff';
  		}
  		function show(menu){		/*鼠标移进，显示相应的menu*/
  			document.getElementById(menu).style.visibility="visible";
  		}
  		function hide(menu){		/*鼠标移进出，隐藏*/
  			document.getElementById(menu).style.visibility="hidden";
  		}
  	</script>
  <body>
  	<%-- 第一行的内容--%>
    <div class="header">
    	<div class="header-left">	<%-- 第一行的左侧内容--%>
    		<div class="miao">喵，欢迎来天猫</div>
    		<a href="Login.jsp"><div id="login" onmousemove="changeTextColorToRed('login')" onmouseout="changeTextColorToGray('login')">请登录</div></a>
    		<a href="Register.jsp"><div id="set" onmousemove="changeTextColorToRed('set')" onmouseout="changeTextColorToGray('set')">免费注册</div></a>
    	</div>
    	<div class="header-right">	<%-- 第一行的右侧内容--%>
    		<a href="#"><div id="taobao" onmousemove="show('taobao-show');changeTextColorToRed('taobao');changeBackgroundToWhite('taobao')" onmouseout="hide('taobao-show');changeTextColorToBlack('taobao');changeBackgroundToGray('taobao')">我的淘宝</div></a>
    		<a href="#"><div id="che" onmousemove="changeBackgroundToWhite('che');changeTextColorToRed('che')" onmouseout="changeTextColorToBlack('che');changeBackgroundToGray('che')"><img src="Image/che.jpg"></img>购物车</div></a>
    		<a href="#"><div id="jia" onmousemove="show('jia-show');changeTextColorToRed('jia');changeBackgroundToWhite('jia')" onmouseout="hide('jia-show');changeTextColorToBlack('jia');changeBackgroundToGray('jia')">收藏夹</div></a>
    		<a href="#"><div id="phone" onmousemove="show('phone-show');changeTextColorToRed('phone');changeBackgroundToWhite('phone')" onmouseout="hide('phone-show');changeTextColorToBlack('phone');changeBackgroundToGray('phone')"><img src="Image/L-phone.jpg"></img>手机版</div></a>
    		<a href="https://www.taobao.com/?spm=875.7931836/B.a2226mz.12.2ced4265sj3FOe"><div id="wang" onmousemove="changeTextColorToRed('wang');changeBackgroundToWhite('wang')" onmouseout="changeTextColorToBlack('wang');changeBackgroundToGray('wang')">淘宝网</div></a>
    		<a href="#"><div id="shangjia" onmousemove="changeBackgroundToWhite('shangjia');changeTextColorToRed('shangjia')" onmouseout="changeTextColorToBlack('shangjia');changeBackgroundToGray('shangjia')"><img src="Image/love.jpg"></img>商家支持</div></a>
    		<a href="#"><div id="wangzhan" onmousemove="changeBackgroundToWhite('wangzhan');changeTextColorToRed('wangzhan');" onmouseout="changeTextColorToBlack('wangzhan');changeBackgroundToGray('wangzhan')"><img src="Image/grod.jpg"></img>网站导航</div></a>
    	</div>
    </div>
    
    <%-- loge和搜索框--%>
    <div class="footer">
    	<div class="footer-left">
    		<img src="Image/TMAIL.png" alt="天猫loge" title="天猫商城欢迎您!"></img>
    	</div>
    	<div class="footer-right">
    		<div class="search">
    			<form action="" method="post">
    				<input placeholder="搜索 天猫 商品/品牌/商店" type="search" id="inputDemo">
    				<input type="button" value="搜索" id="in" onclick="search('in')" onmousemove="changeBackgroundToRed1('in')" onmouseout="changeBackgroundToRed2('in')">
    			</form>
    		</div>
    		<!-- 
    		<div class="search">
				<div class="search-1" id="kuang">
					<input placeholder="搜索 天猫 商品/品牌/商店" type="search" id="inputDemo">
				</div>
				<div id="in" onclick="search('in','kuang')" onmousemove="setRed('in')" onmouseout="reset('in')"><a href="#">搜索</a>
				</div>
			</div>
			 -->
    		<div class="classify">
				<table align="left">
					<tr>		<%--搜索下的分类 --%>
						<td id="classify1" onmousemove="changeBackgroundToRed1('classify1')" onmouseout="changeBackgroundToWhite('classify1')"><a href="#">针织衫</a></td>
						<td id="classify2" onmousemove="changeBackgroundToGray('classify2')" onmouseout="changeBackgroundToWhite('classify2')"><a href="#">连衣裙</a></td>
						<td id="classify3" onmousemove="changeBackgroundToRed1('classify3')" onmouseout="changeBackgroundToWhite('classify3')"><a href="#">四件套</a></td>
						<td id="classify4" onmousemove="changeBackgroundToGray('classify4')" onmouseout="changeBackgroundToWhite('classify4')"><a href="#">摄像头</a></td>
						<td id="classify5" onmousemove="changeBackgroundToRed1('classify5')" onmouseout="changeBackgroundToWhite('classify5')"><a href="#">客厅灯</a></td>
						<td id="classify6" onmousemove="changeBackgroundToRed1('classify6')" onmouseout="changeBackgroundToWhite('classify6')"><a href="#">口红</a></td>
						<td id="classify7" onmousemove="changeBackgroundToGray('classify7')" onmouseout="changeBackgroundToWhite('classify7')"><a href="#">手机</a></td>
						<td id="classify8" onmousemove="changeBackgroundToRed1('classify8')" onmouseout="changeBackgroundToWhite('classify8')"><a href="#">运动鞋</a></td>
						<td id="classify9" onmousemove="changeBackgroundToGray('classify9')" onmouseout="changeBackgroundToWhite('classify9')"><a href="#">牛奶</a></td>
					</tr>
				</table>
			</div>
    	</div>
    </div>
    
    <%-- 隐藏的div--%>
    <%-- 我的淘宝--%>
    <div id="taobao-show" onmousemove="show('taobao-show');changeTextColorToRed('taobao');changeBackgroundToWhite('taobao')" onmouseout="hide('taobao-show');changeTextColorToBlack('taobao');changeBackgroundToGray('taobao')">
    	<div id="taobao-div1" onmousemove="changeBackgroundToRed1('taobao-div1')" onmouseout="changeBackgroundToWhite('taobao-div1')"><a href="#">已买到的宝贝</a></div>
    	<div id="taobao-div2" onmousemove="changeBackgroundToRed1('taobao-div2')" onmouseout="changeBackgroundToWhite('taobao-div2')"><a href="#">已卖出的宝贝</a></div>
    </div>
    
    <%-- 收藏夹--%>
    <div id="jia-show" onmousemove="show('jia-show');changeTextColorToRed('jia');changeBackgroundToWhite('jia')" onmouseout="hide('jia-show');changeTextColorToBlack('jia');changeBackgroundToGray('jia')">
    	<div id="jia-div1" onmousemove="changeBackgroundToRed1('jia-div1')" onmouseout="changeBackgroundToWhite('jia-div1')"><a href="#">收藏的宝贝</a></div>
    	<div id="jia-div2" onmousemove="changeBackgroundToRed1('jia-div2')" onmouseout="changeBackgroundToWhite('jia-div2')"><a href="#">收藏的店铺</a></div>
    </div>
    
    <%-- 下载手机版本--%>
    <div id="phone-show" onmousemove="show('phone-show');changeTextColorToRed('phone');changeBackgroundToWhite('phone')" onmouseout="hide('phone-show');changeTextColorToBlack('phone');changeBackgroundToGray('phone')">
    	<a href="#"><img id="phone-img" src="Image/phone.png" alt="phone"></img></a>
    	 <div class="APP">到天猫APP</div>
    	 <div class="redpack">领新人红包</div>
    </div>
    
  </body>
</html>
