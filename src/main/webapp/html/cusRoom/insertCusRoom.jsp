<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="${baseurl}"/>
	<%@ include file="/html/common/include.jsp" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 	<%@page isELIgnored="false"%> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客房管理系统</title>
</head>
<style type="text/css">
.msg { 
	color:red;
} 
</style>
<body>

	<div id="wrapper">
		<%@ include file="/html/common/bar.jsp" %>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							订单信息 
						</h1>
					</div>
				</div>
				<form action="cusRoom/insert" method="post">
					<div class="panel panel-default">
						<div class="panel-heading">请填写以下信息<lable class="msg">${msg }</lable></div>
						<div class="panel-body">
							<div class="col-lg-6">
								<div class="form-group">
									<label>身份证号：<lable class="msg">(新用户需先登记个人信息)</lable></label> <input class="form-control" name="cusID">
								</div>
								<div class="form-group">
									<label>入住时间：<lable class="msg">(输入格式：2019-01-12)</lable></label> <input class="form-control"
										name="comeTime">
								</div>
								<button type="submit" class="btn btn-default">提交</button>
								<button type="reset" class="btn btn-default">清空</button>
							</div>
							<!-- 右边 -->
							<div class="col-lg-6">
								<div class="form-group">
									<div class="form-group">
									<label for="disabledSelect">房间编号：</label> <select
										class="form-control" name="roomID">
										<option value="">请选择</option>
										<c:forEach items="${list }" var="room">
											<option value="${room.roomID }">${room.roomID }&nbsp;&nbsp;&nbsp;&nbsp;${room.roomType }&nbsp;&nbsp;&nbsp;&nbsp;￥${room.roomPrice }</option>
										</c:forEach>
									</select>
								</div>
								</div>
								<div class="form-group">
									<label>离开时间：<lable class="msg">(输入格式：2019-01-12)</lable></label> <input class="form-control"
										name="outTime">
								</div>
								<!-- </fieldset> -->
							</div>
							<!-- /.col-lg-6 (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</form>
			</div>
		</div>
		<!-- /. ROW  -->
	</div>
</body>
</html>