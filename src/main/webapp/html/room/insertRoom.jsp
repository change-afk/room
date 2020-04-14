<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="${baseurl}"/>
	<%@ include file="/html/common/include.jsp" %>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客房管理系统</title>
<!-- <style type="text/css">
.all-text { 
	/* width: 1000px;
		height: 500px; */
	margin: 100 auto;
} 
</style>-->
</head>

<body>

	<div id="wrapper">
		<%@ include file="/html/common/bar.jsp" %>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							房间信息 
						</h1>
					</div>
				</div>
				<form action="room/insert" method="post">
					<div class="panel panel-default">
						<div class="panel-heading">请填写以下信息</div>
						<div class="panel-body">
							<div class="col-lg-6">
								<div class="form-group">
									<label>房间编号：</label> <input class="form-control" name="roomID">
								</div>
								<div class="form-group">
									<label>房间价格：</label> <input type="number" class="form-control"
										name="roomPrice">
								</div>
								<button type="submit" class="btn btn-default">提交</button>
								<button type="reset" class="btn btn-default">清空</button>
							</div>
							<!-- 右边 -->
							<div class="col-lg-6">
								<div class="form-group">
									<label>房间类型：</label> <input class="form-control" name="roomType">
								</div>
								<div class="form-group">
									<label for="disabledSelect">房间状态:</label> <select
										class="form-control" name="roomState">
										<option value="空房间">空房间</option>
										<option value="已入住">已入住</option>
										<option value="未入住">未入住</option>
									</select>
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