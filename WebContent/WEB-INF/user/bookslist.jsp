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

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<title>图书管理系统</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/css/modules/layer/default/layer.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/layui/css/layui.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/font/iconfont.woff" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/layui/font/iconfont.ttf" />
<script type="text/javascript" src="${ctx}/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<style type="text/css">
h1, h2, h3, h4, h5, h6 {
	font-weight: 400;
	font-family: '汉仪彩云体简';
	color: #FFFFFF;
	font-size: 32px;
	line-height: 70px;
}

.layui-layout-admin .layui-header {
	background: url("${ctx}/img/hea.jpg");
	height: 70px;
	line-height: 70px;
}

.layui-side-scroll {
	position: relative;
	width: 200px;
	height: 90%;
	overflow-x: hidden;
	margin-top: 0px;
}
/*左侧的菜单栏大面板*/
.layui-layout-admin .layui-side {
	top: 70px;
	width: 200px;
	overflow-x: hidden;
	background: url(img/header.jpg);
}
</style>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" style="height:;">
			<div class="layui-logo">
				<a href="bookslist">
					<h1>图书管理系统</h1>
				</a>
			</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="bookslist">首页</a></li>
				<li class="layui-nav-item"><a href="#">图书管理</a></li>
				<li class="layui-nav-item"><a href="#">用户</a></li>
				<li class="layui-nav-item"><a href="#">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="#">邮件管理</a>
						</dd>
						<dd>
							<a href="#">消息管理</a>
						</dd>
						<dd>
							<a href="#">授权管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img">欢迎${loginer.username}
				</a></li>
				<li class="layui-nav-item"></li>
				<li class="layui-nav-item" onclick="closeThis()"><a href="">退出系统</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">图书管理</a>
						<dl class="layui-nav-child" id="child">
							<dd>
								<a href="addBooks" target="">增加图书信息</a>
							</dd>
							<dd>
								<div class="site-demo-button" id="layerDemo"
									style="margin-bottom: 0;" align="left">
									<a data-method="setTop" class="layui-btn">数据信息展示</a>
								</div>

							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">角色管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#">增加借阅者信息</a>
							</dd>
							<dd>
								<a href="#">修改借阅者信息</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="#">云服务</a></li>
					<li class="layui-nav-item"><a href="#">借阅系统</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">


			<blockquote class="layui-elem-quote" style="margin-top: 10px;">
				<span class="site-demo-button" id="layerDemo"
					style="margin-bottom: 0;"> <a data-method="notice"
					class="layui-btn layui-btn-radius""> <i class="layui-icon"
						style="font-size: 20px;">&#xe654;</i> 添加
				</a>
				</span>
				<form class="layui-form" style="float: right;" action="findByName"
					method="post">
					<div class="layui-input-inline">
						<input type="tel" name="bookName" autocomplete="off" id="bookName"
							placeholder="请输入书籍的名字" class="layui-input">
					</div>
					<div class="layui-input-inline " style="width: 90px">
						<button class="layui-btn" lay-submit lay-filter="formDemo"
							data-type="reload">
							<i class="layui-icon" style="font-size: 20px;"></i> 搜索
						</button>
					</div>
				</form>
			</blockquote>

			<div class="layui-form" name="body">
				<!--工具栏-->


				<table class="layui-table"
					lay-data="{height:415, toolbar: 'default', page:true, id:'test'}"
					lay-filter="test">
					<thead>
						<tr>
							<th lay-data="{field:'ids', fixed: 'center',width:60}">选择</th>
							<th lay-data="{field:'bookId', width:80, sort: true}">ID</th>
							<th lay-data="{field:'bookName', width:80}">书名</th>
							<th lay-data="{field:'author', width:120, sort: true}">作者</th>
							<th lay-data="{field:'price'}">价钱</th>
							<th lay-data="{field:'publishTime'}">出版时间</th>
							<th lay-data="{field:'type'}">类型</th>
							<th lay-data="{field:'count'}">数量</th>
							<th lay-data="{field:'option'}">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${Books}" var="c" varStatus="stat">
							<tr>
								<td style="width: 15px;">
								
								<input type="checkbox" name="ids" lay-skin="primary"  value="${c.bookId}">
								
								<!-- <input type="checkbox"
									style="width:20px;" name="ids"/> -->
								
								</td>
								<td>${stat.count}</td>
								<td>${c.bookName}</td>
								<td>${c.author}</td>
								<td>${c.price}</td>
								<td>${c.publishTime}</td>
								<td>${c.type}</td>
								<td>${c.count}</td>
								<td>
									<div id="barDemo">

										<a class="layui-btn layui-btn-xs" lay-event="edit"
											href="getBook?id=${c.bookId}">编辑</a>
										<%-- <a id="delete"
											class="layui-btn layui-btn-danger layui-btn-xs"
											lay-event="del" href="delBook?id=${c.bookId} onclick="toDelete()">删除</a> --%>
										<input class="layui-btn layui-btn-danger layui-btn-xs"
											value="删除" onclick="toDelete()" lay-event="del"
											style="width: 40px;">
										<form id="delete" action="delBook?id=${c.bookId}"
											method="post" hidden=""></form>

									</div>
								</td>
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
		/* 退出系统 */
		function closeThis() {
			if (confirm("您确定要关闭本页吗？")) {
				window.opener = null;
				window.open('', '_self');
				window.close();
			}
		}
		/* 删除信息时的提示 */
		function toDelete() {
			var idsObj = document.getElementsByName("ids");//数组
			var isSelected = false;//记录是够讯选择了
			//先判断用户是否选择了
			for (var i = 0; i < idsObj.length; i++) {
				if (idsObj[i].checked) {
					isSelected = true;
					break;
				}
			}
			//日过选择了任何一个，进行二次提示
			if (isSelected) {
				var sure = window.confirm("确定要删除记录吗？");
				if (sure) {
					//确定，删除提示删除成功
					document.getElementById("delete").submit();
				}
			} else {
				alert("请选择要删除的记录");
			}
		}
		/* layui需要用到的控件 */
		layui.use([ 'laydate', 'laypage', 'layer', 'table', 'carousel',
				'upload', 'element', 'slider' ], function() {
			var laydate = layui.laydate //日期
			, laypage = layui.laypage //分页
			, layer = layui.layer //弹层
			, table = layui.table //表格
			, carousel = layui.carousel //轮播
			, upload = layui.upload //上传
			, element = layui.element //元素操作
			, slider = layui.slider //
		});
	</script>

	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
		/*弹出层的内容*/
		layui.use('layer', function() { //独立版的layer无需执行这一句
			var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

			//触发事件
			var active = {
				notice : function() {
					//示范一个公告层
					layer.open({
						type : 2,
						title : '增加书籍' //不显示标题栏
						,
						closeBtn : 2,
						area : [ '380px', '450px' ],
						shade : 0.7,
						id : 'LAY_layuipro' //设定一个id，防止重复弹出        
						,
						btnAlign : 'c',
						skin : 'layui-layer-molv',
						anim : 3 //拖拽模式，0或者1
						,

						content : 'addBooks',
						yes : function(index, layero) {
							//do something
							layer.close(index);
						}

					});
				},
				setTop : function() {
					var that = this;
					//多窗口模式，层叠置顶
					layer.open({
						type : 2 //此处以iframe举例
						,
						title : '数据分析',
						area : [ '450px', '390px' ],
						shade : 0.7,
						maxmin : true,
						skin : 'layui-layer-molv',
						content : 'data',
						yes : function() {
							$(that).click();
						},
						btn2 : function() {
							layer.closeAll();
						}
					});
				}
			};
			$('#layerDemo .layui-btn').on('click', function() {
				var othis = $(this), method = othis.data('method');
				active[method] ? active[method].call(this, othis) : '';
			});

		});
	</script>
</body>
</html>