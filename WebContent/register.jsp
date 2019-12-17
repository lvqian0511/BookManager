<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="${ctx}/layui/css/modules/layer/default/layer.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/css/layui.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.woff"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.ttf"/>
  <script type="text/javascript" src="${ctx}/layui/layui.js"></script>
  <script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/css/login.css">
<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>

<link rel="stylesheet" href="${ctx}/css/supersized.css">
<script src="${ctx}/js/supersized.3.2.7.min.js"></script>
<script src="${ctx}/js/supersized-init.js"></script>
</head>
  <body class="login_bj">

        <div class="zhuce_body">
            <div class="zhuce_kong">
                <div class="zc">
                    <div class="bj_bai">
                        <h3>欢迎注册</h3>
                        <form action="regist" method="post" class="layui-form">
                              <input type="text" name="username" required lay-verify="required|phone" placeholder="请输入手机号" autocomplete="off" class="layui-input"
                                  style="background:#E6E6E6;width: 260px;">
                              <br />
                            <input type="text" name="email" required lay-verify="required|email" placeholder="请输入邮箱" autocomplete="off" class="layui-input"
                                style="background:#E6E6E6;width: 260px;">
                             <br />
                             <input type="password" name="password" required lay-verify="required|number" placeholder="请输入密码" autocomplete="off" class="layui-input"
                                 style="background:#E6E6E6;width: 260px;">           
                          
                           <br />   
                             <br />
                              
                                 <br />
                            <div class="layui-input-block">
              
                  <button class="layui-btn" lay-submit lay-filter="formDemo">注册</button> 
                  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>

                        </form>
                    </div>
                    <div class="bj_right">
                        <p>使用以下账号直接注册</p>

                        <a href="#" class="zhuce_qq">
                            <i class="layui-icon" style="font-size: 20px; color: #1E9FFF;">&#xe676;</i>QQ注册</a>
                        <a href="#" class="zhuce_wb">
                            <i class="layui-icon" style="font-size: 20px; color:#FF730E;">&#xe675;</i> 微博注册
                        </a>
                        <a href="#" class="zhuce_wx">
                            <i class="layui-icon" style="font-size: 20px; color:#00C800;">&#xe677;</i> 微信注册
                        </a>
                        <p>已有账号？
                            <a href="login">立即登录</a>
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
    
</script>
</html>