<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/css/modules/layer/default/layer.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/layui/css/layui.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/font/iconfont.woff" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/font/iconfont.ttf" />
<script type="text/javascript" src="${ctx}/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/css/login.css">
<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.cookie.js"></script>

<link rel="stylesheet" href="${ctx}/css/supersized.css">
<script src="${ctx}/js/supersized.3.2.7.min.js"></script>
<script src="${ctx}/js/supersized-init.js"></script>
</head>
<body class="login_bj">
	<div class="zhuce_body">
		<div class="zhuce_kong login_kuang">
			<div class="zc">
				<div class="bj_bai" style="height: 300px;">
					<h3>登录</h3>
					<form action="loginUser" method="post" class="layui-form">

						<input type="text" name="username" required
							lay-verify="required|phone" placeholder="请输入手机号"
							autocomplete="off" class="layui-input"
							style="background: #FAFFBD; width: 240px;" id="username"><br>
						<input type="password" name="password" required
							lay-verify="required|number" placeholder="请输入密码"
							autocomplete="off" class="layui-input"
							style="background: #FAFFBD; width: 240px;" id="password">
						<br>
						<div style="width: 90px; height: 50px;">

							<input type="checkbox" name="rememberMe" title="记住密码"
								lay-skin="primary" id="rememberMe">
						

						</div>

						<div class="layui-input-block" style="float: left;">

							<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="Save()">登录</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>

					</form>

				</div>
				<div class="bj_right" style="height: 300px;">
					<p>使用以下账号直接登录</p>

					<a href="#" class="zhuce_qq"> <i class="layui-icon"
						style="font-size: 20px; color: #1E9FFF;">&#xe676;</i>QQ登录
					</a> <a href="#" class="zhuce_wb"> <i class="layui-icon"
						style="font-size: 20px; color: #FF730E;">&#xe675;</i> 微博登录
					</a> <a href="#" class="zhuce_wx"> <i class="layui-icon"
						style="font-size: 20px; color: #00C800;">&#xe677;</i> 微信登录
					</a>
					<p>
						没有账号？ <a href="register.jsp">立即注册</a>
					</p>
				</div>
			</div>

		</div>

	</div>

</body>
<script type="text/javascript">
	//Demo
	layui.use('form', function() {
		var form = layui.form;

	});
	//记住用户名密码
	function Save() {
		if ($("#rememberMe").prop("checked")) {
			var str_username = $("#username").val();//用户名
			var str_password = $("#password").val();//密码
			$.cookie("rmbUser", "true", {
				expires : 7
			}); //存储一个带7天期限的cookie
			$.cookie("username", str_username, {
				expires : 7
			});
			$.cookie("password", str_password, {
				expires : 7
			});
		} else {
			$.cookie("rmbUser", "false", {
				expire : -1
			});
			$.cookie("username", "", {
				expires : -1
			});
			$.cookie("password", "", {
				expires : -1
			});
		}		
	};
	
	$(document).ready(function() {
        
		if ($.cookie("rmbUser") == "true") {
			$("#rememberMe").attr("checked", true);
			$("#username").val($.cookie("username"));
		    $("#password").val($.cookie("password"));
		}
        

	});
</script>
</html>