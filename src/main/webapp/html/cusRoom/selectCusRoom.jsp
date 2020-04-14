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
							订单管理 
						</h1>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
								  
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th style="display:none">id</th>
												<th>客户名称</th>
												<th>联系方式</th>
												<th>房间编号</th>
												<th>入住时间</th>
												<th>离开时间</th>
												<th>总价</th>
												<th>入住/退房</th>
												<th>修改</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${list }" var="cr">
											<tr class="odd gradeX">
												<td style="display:none">${cr.ID }</td>
												<td>${cr.cusName }</td>
												<td>${cr.cusTel }</td>
												<td>${cr.roomID }</td>
												<td>${cr.comeTime }</td>
												<td>${cr.outTime }</td>
												<td>${cr.price }</td>
												<form action="cusRoom/editRoom" method="post">
												<td>
												    <button class="btn btn-primary" >${cr.msg }</button>
												    <input type="hidden" name="id" value="${cr.ID }">
												    <input type="hidden" name="msg" value="${cr.msg }">
												    <input type="hidden" name="roomID" value="${cr.roomID }">
												</td>
												</form>
												<td>
												    <button class="btn btn-primary" data-toggle="modal" onclick="editInfo(this)" data-target="#myModal">
														修改
													</button>
													<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																<form action="cusRoom/update" method="post">
																	<h4 class="modal-title" id="myModalLabel">
																		修改入住/离开时间
																	</h4>
																</div>
																<input type="hidden" class="form-control" id="ID" name="ID">
																<div class="modal-body">
																	<div class="form-group">
																		<label>入住时间：</label> 
																		<input class="form-control" id="comeTime" name="comeTime"><lable class="msg">(输入格式：2019-01-12)</lable>
																	</div>
																<!-- 右边 -->
																	<div class="form-group">
																		<label>离开时间：</label> 
																		<input class="form-control" id="outTime" name="outTime"><lable class="msg">(输入格式：2019-01-12)</lable>
																	</div>	
																	<!-- </fieldset> -->
	
																</div>
																<div class="modal-footer">
																		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
																		<button class="btn btn-primary" >提交更改</button>
																</div>
															</form>
															</div><!-- /.modal-content -->
														</div><!-- /.modal -->
													</div>
												</td>
												<form action="cusRoom/delete" method="post">
												<td>
												    <button class="btn btn-primary" >删除</button>
												    <input type="hidden" name="del" value="${cr.ID }">
												</td>
												</form>
											</tr>
										</c:forEach>
										</tbody>
									</table>
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
                var comeTime = $td.eq(4).text(); 
                var outTime = $td.eq(5).text(); 
                //向模态框中传值  
                $('#ID').val(ID);  
                $('#comeTime').val(comeTime);  
                $('#outTime').val(outTime);  
                 $('#update').modal('show');  
            }  
    </script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>

</body>
</html>