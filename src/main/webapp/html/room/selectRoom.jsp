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
<body>
				
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="table-responsive">
						  
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th style="display:none">编号</th>
										<th>房间编号</th>
										<th>房间类型</th>
										<th>房间价格</th>
										<th>房间状态</th>
										<th>修改</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${list }" var="room">
									<tr class="odd gradeX">
										<td style="display:none">${room.ID }</td>
										<td>${room.roomID }</td>
										<td>${room.roomType }</td>
										<td>￥${room.roomPrice }</td>
										<td>${room.roomState }</td>
										
										<td>
										    <button class="btn btn-primary" onclick="editInfo(this)"  data-toggle="modal" data-target="#myModal">
												修改
											</button>
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">
																修改房间信息
															</h4>
														</div>
														<form action="room/update" method="post">
														<div class="modal-body">
															<div class="form-group" style="display:none">
																<label>编号：</label> <input class="form-control" id="ID" name="ID">
															</div>
															<div class="form-group">
																<label>房间编号：</label> <input class="form-control" id="roomID" name="roomID">
															</div>
															<div class="form-group">
																<label>房间价格：</label> <input class="form-control" id="roomPrice" name="roomPrice">
															</div>
														<!-- 右边 -->
															<div class="form-group">
																<label>房间类型：</label> <input class="form-control" id="roomType" name="roomType">
															</div>
															<div class="form-group">
																<label >房间状态：</label>
																 <select class="form-control" id="roomState" name="roomState" readonly> 
																	<option value="空房间">空房间</option>
																	<option value="已入住">已入住</option>
																	<option value="未入住">未入住</option>
																</select>
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
										<form action="room/delete" method="post">
										<td>
										    <button class="btn btn-primary" >删除</button>
										    <input type="hidden" name="del" value="${room.ID }">
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