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
		<!-- 树 -->
		<%@ include file="/html/common/bar.jsp" %>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							客户管理 
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
												<th>身份证号</th>
												<th>姓名</th>
												<th>联系方式</th>
												<th>性别</th>
												<th>修改</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${list }" var="cus">
											<tr class="odd gradeX">
												<td>${cus.cusID }</td>
												<td>${cus.cusName }</td>
												<td>${cus.cusTel }</td>
												<td>${cus.sex }</td>
												
												<td>
												    <button class="btn btn-primary" data-toggle="modal" onclick="editInfo(this)" data-target="#myModal">
														修改
													</button>
													<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																<form action="customer/update" method="post">
																	<h4 class="modal-title" id="myModalLabel">
																		修改客户信息
																	</h4>
																</div>
																<div class="modal-body">
																	<div class="form-group">
																		<label>身份证号：</label> <input readonly class="form-control" name="cusID" id="cusID" >
																	</div>
																	<div class="form-group">
																		<label>客户姓名：</label> <input class="form-control" name="cusName" id="cusName" >
																	</div>
																<!-- 右边 -->
																	<div class="form-group">
																		<label>联系电话：</label> <input class="form-control" name="cusTel" id="cusTel" >
																	</div>
																	<div class="form-group">
																		<label >性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label> <select
																			class="form-control" name="sex" id="sex" >
																			<option value="">请选择</option>
																			<option value="男">男</option>
																			<option value="女">女</option>
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
												<form action="customer/delete" method="post">
												<td>
												    <button class="btn btn-primary" >删除</button>
												    <input type="hidden" name="del" value="${cus.cusID }">
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
                var id = $td.eq(0).text();
                var name = $td.eq(1).text();  
                var tel = $td.eq(2).text();
                var sex = $td.eq(3).text(); 
                //向模态框中传值  
                $('#cusID').val(id);  
                $('#cusName').val(name);  
                $('#cusTel').val(tel);  
                $('#sex').val(sex);  
                 $('#update').modal('show');  
            }  
    </script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>

</body>
</html>