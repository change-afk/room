<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%> 
<title></title>
	<base href="${baseurl}"/>
	<%@ include file="/html/common/include.jsp" %>
</head>
<style type="text/css">
.msg { 
	color:red;
} 
</style>
<body>
		<!-- 树 -->
		<%@ include file="/html/common/bar.jsp" %>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							信息统计 
						</h1>
					</div>
				</div>
				<form action="cusRoom/count" method="post">
				<div class="panel panel-default">
						<div class="panel-heading">请输入查询信息</div>
						<div class="panel-body">
							<div class="col-lg-6">
								<div class="form-group">
									<label>开始时间：<lable class="msg">(输入格式：2019-01-12)</lable></label> <input class="form-control"
										name="comeTime" value="${comeTime }">
								</div>
								<button type="submit" class="btn btn-default">提交</button>
								<button type="reset" class="btn btn-default">清空</button>
							</div>
							<!-- 右边 -->
							<div class="col-lg-6">
								<div class="form-group">
									<label>结束时间：<lable class="msg">(输入格式：2019-01-12)</lable></label> <input class="form-control"
										name="outTime" value="${outTime }">
								</div>
								<!-- </fieldset> -->
							</div>
							<!-- /.col-lg-6 (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					</form>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
								  
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>房间编号</th>
												<th>房间类型</th>
												<th>入住时间</th>
												<th>离开时间</th>
												<th>房间单价</th>
												<th>合计</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${list }" var="cr">
											<tr class="odd gradeX">
												<td>${cr.roomID }</td>
												<td>${cr.roomType }</td>
												<td>${cr.comeTime }</td>
												<td>${cr.outTime }</td>
												<td>￥${cr.roomPrice }</td>
												<td>${cr.price }</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									<c:forEach items="${list2 }" var="cr2">
									<h3>总计:${cr2.priceTotal }</h3>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /. ROW  -->
	<!-- /. PAGE WRAPPER  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.metisMenu.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
            function editInfo(obj) {
            	var $td = $(obj).parents('tr').children('td');   
                //获取表格中的一行数据  
                var ID = $td.eq(0).text();
                var roomID = $td.eq(1).text();
                var roomType = $td.eq(2).text();  
                var roomPrice = $td.eq(3).text();
                var roomState = $td.eq(4).text(); 
                //向模态框中传值  
                $('#ID').val(ID);  
                $('#roomID').val(roomID);  
                $('#roomPrice').val(parseInt(roomPrice.substring(1)));  
                $('#roomType').val(roomType);  
                $('#roomState').val(roomState);  
                 $('#update').modal('show');  
            }  
    </script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>

</body>
</html>