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
  
  <title>开始使用layui</title>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/css/modules/layer/default/layer.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/css/layui.css"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.woff"/>
  <link rel="stylesheet" type="text/css" href="${ctx}/layui/font/iconfont.ttf"/>
  <script type="text/javascript" src="${ctx}/layui/layui.js"></script>
  <script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<style type="text/css">
h1, h2, h3, h4, h5, h6 {
font-weight: 400;
font-family:'汉仪彩云体简' ;
color: #FFFFFF;
font-size: 32px;
line-height: 70px;

}
.layui-layout-admin .layui-header {
background:url("${ctx}/img/hea.jpg");
height: 70px;
line-height: 70px;

}    
.layui-side-scroll {
position: relative;
width: 200px;
height: 90%;
overflow-x: hidden;
margin-top:0px;
}
/*左侧的菜单栏大面板*/
.layui-layout-admin .layui-side {
top: 70px;
width: 200px;
overflow-x: hidden;
background:url(img/header.jpg);
}
</style>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header" style="height: ;">
    <div class="layui-logo"><h1 >图书管理系统</h1></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
        登录
        </a>
        <!--<dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>-->
      </li>
       <li class="layui-nav-item">
           
            <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
 
   
  <a data-method="notice" class="layui-btn">注册</a>
 
</div>
       </li>
        <li class="layui-nav-item"><a href="">退出系统</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">图书管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">增加图书信息</a></dd>
            <dd><a href="javascript:;">修改图书信息</a></dd>
            <dd><a href="javascript:;">删除图书信息</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">角色管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">增加借阅者信息</a></dd>
            <dd><a href="javascript:;">修改借阅者信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
 

<div class="layui-form">
 <!--工具栏-->
 <script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
             
<table class="layui-table" lay-data="{height:415, toolbar: 'default', page:true, id:'test'}" lay-filter="test">
  <thead>
    <tr>
      <th lay-data="{type: 'checkbox', fixed: 'left'}"></th>
         
      <th lay-data="{field:'userId', width:80, sort: true}">ID</th>
      <th lay-data="{field:'userNo', width:80}">学号</th>
      <th lay-data="{field:'userName', width:120, sort: true}">姓名</th>
      <th lay-data="{field:'department'}">所在学院</th>
      <th lay-data="{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}">操作</th>
    </tr>
  </thead>
    <tbody>
    	<c:forEach items="${Book}" var="c" varStatus="stat">
			<tr>
			    <td></td> 
				<td>${c.userId}</td>
				<td>${c.userNo}</td>
				<td>${c.userName}</td>
				<td>${c.department}</td>
			</tr>
		</c:forEach>
    </tbody>
  </table>
  
</div>
   
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © 河北工程大学图书管理系统
  </div>
</div>
<!--数据表格-->

<script>
layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){
  var laydate = layui.laydate //日期
  ,laypage = layui.laypage //分页
  ,layer = layui.layer //弹层
  ,table = layui.table //表格
  ,carousel = layui.carousel //轮播
  ,upload = layui.upload //上传
  ,element = layui.element //元素操作
  ,slider = layui.slider //
 });
 
   //头工具栏事件
  table.on('toolbar(test)', function(obj){
    var checkStatus = table.checkStatus(obj.config.id);
    switch(obj.event){
      case 'getCheckData':
        var data = checkStatus.data;
        layer.alert(JSON.stringify(data));
      break;
      case 'getCheckLength':
        var data = checkStatus.data;
        layer.msg('选中了：'+ data.length + ' 个');
      break;
      case 'isAll':
        layer.msg(checkStatus.isAll ? '全选': '未全选');
      break;
    };
  });
  
  //监听行工具事件
  table.on('tool(test)', function(obj){
    var data = obj.data;
    //console.log(obj)
    if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
      layer.prompt({
        formType: 2
        ,value: data.email
      }, function(value, index){
        obj.update({
          email: value
        });
        layer.close(index);
      });
    }
  });

</script>   

<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;  
});
/*表格的内容*/
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
   notice: function(){
      //示范一个公告层
      layer.open({
        type: 2
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: ['500px', '550px']
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['火速围观', '残忍拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: 'http://127.0.0.1:8020/layui/register.html'
        ,success: function(layero){
          var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'http://www.layui.com/'
            ,target: '_blank'
          });
        }
      });
    }
  };  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
});
</script>
</body>
</html>