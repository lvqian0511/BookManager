<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>

<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <title>图书管理系统</title>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/css/modules/layer/default/layer.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/css/layui.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.woff"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.ttf"/>
  <script type="text/javascript" src="${ctx}/layui/layui.js"></script>
  <script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<body>
   <form class="layui-form" action="updateBook" style="margin-left:-40px;">
   <!-- 这里要设置一个id，否则无法获得id -->
              <div class="layui-form-item" hidden="">
                <label class="layui-form-label">书名</label>

                <div class="layui-input-inline">
                    <input type="text" name="bookId" required lay-verify="required" placeholder="请输入书名" autocomplete="off" class="layui-input" value="${Books.bookId}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">书名</label>

                <div class="layui-input-inline">
                    <input type="text" name="bookName" required lay-verify="required" placeholder="请输入书名" autocomplete="off" class="layui-input" value="${Books.bookName}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">作者</label>
                <div class="layui-input-inline">
                    <input type="text" name="author" required lay-verify="required" placeholder="请输入作者" autocomplete="off" class="layui-input" value="${Books.author}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">价钱</label>
                <div class="layui-input-inline">
                    <input type="text" name="price" required lay-verify="required|number" placeholder="￥" autocomplete="off" class="layui-input" value="${Books.price}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">出版时间</label>
                <div class="layui-input-inline">
                    <input type="text" name="publishTime" required lay-verify="required|date" placeholder="请输入出版日期" autocomplete="off" class="layui-input" id="publishTime" value="${Books.publishTime}">
                </div>
            </div>
            <div class="layui-form-item" pane>
                <label class="layui-form-label">类型</label>
                <div class="layui-input-inline">
                    <select name="type" lay-verify="required" title="${Books.type}">
<%-- <option value="1" >selected</c:if> >男</option>  
<option value="2" <c:if test="${'2' eq curStatus}">selected</c:if> >女</option>
 --%>
                        <option value="">${Books.type}</option>
                       
                       <option value="自然科学">自然科学</option>
                       <option value="通信技术">通信技术</option>
                        <option value="计算机科学">计算机科学</option>
                        <option value="言情小说">言情小说</option>
                        <option value="人文地理">人文地理</option> 
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">数量</label>
                <div class="layui-input-inline" >
                    <input type="text" name="count" required lay-verify="required|number" placeholder="请输入该数的库存量" autocomplete="off" class="layui-input" value="${Books.count}">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
               <!--  <input type="submit" class="layui-btn" value="添加"> -->
                  <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button> 
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>

        <script>
           //Demo
            layui.use('form', function() {
                var form = layui.form;
                
               
            });  
            //data日期
            layui.use('laydate', function() {
                var laydate = layui.laydate;

                //执行一个laydate实例
                laydate.render({
                    elem: '#publishTime' //指定元素
                });
            });
          
   
      
        </script>
</body>
</html>