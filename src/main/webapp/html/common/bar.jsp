<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div>
		<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">客房管理系统</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><i
				class="fa fa-comments"></i> <strong>客房管理系统 </strong></a>
		</div>
		<!-- 通知 -->
			<ul class="nav navbar-top-links navbar-right"><b></b>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw"></i>admin <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="html/login/login.jsp"><i class="fa fa-sign-out fa-fw"></i>退出</a></li>
					</ul></li>
			</ul>
		</nav>
<!-- 树 -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li><a href="#"> <i class="fa fa-dashboard"></i>房间信息<span
						class="fa arrow" /></a>
					<ul class="nav nav-second-level">
						<li><a href="html/room/insertRoom.jsp">增加房间信息</a></li>
						<li><a href="room/select">房间信息操作</a></li>
					</ul></li>
				<li><a href="#"> <i class="fa fa-desktop"></i>客户信息<span
						class="fa arrow" /></a>
					<ul class="nav nav-second-level">
						<li><a href="html/customer/insertCus.jsp">增加客户信息</a></li>
						<li><a href="customer/select">客户信息操作</a></li>
					</ul></li>
					<li>
				<li><a href="#"> <i class="fa fa-qrcode"></i>订单信息<span
						class="fa arrow" /></a>
					<ul class="nav nav-second-level">
						<li><a href="cusRoom/selectRoom">增加订单信息</a></li>
						<li><a href="cusRoom/select">订单信息操作</a></li>
					</ul></li>
				<li><a href="#"> <i class="fa fa-bar-chart-o"></i>统计<span
						class="fa arrow" /></a>
					<ul class="nav nav-second-level">
						<li><a href="html/total/count.jsp">信息统计</a></li>
					</ul></li>
			</ul>
		</div>
		</nav>
</div>