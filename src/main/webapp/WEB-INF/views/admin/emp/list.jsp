<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Spring MVC CRUD</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-8">
				<h4 class="text-center">Carreras - PFR</h4>
				<hr>
				<br /> <a href="<%=request.getContextPath()%>/admin/emp/createform"
					class="btn btn-success"><i class="glyphicon glyphicon-edit"></i>
					Create Employee</a>
					<a href="<%=request.getContextPath()%>/admin/menu"
					class="btn btn-primary"><i class="glyphicon glyphicon-edit"></i>
					Menu</a>
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nombre</th>
							<th>Descripcion</th>
							<th>Duracion</th>
							<th>Sede</th>
							<th>Objetivo</th>
							<!--  th>Dept</th -->
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="car" items="${carreras}">
							<tr>
								<td>${car.pfr_id}</td>
								<td>${car.name}</td>
								<td>${car.descripcion}</td>
								<td>${car.duracion}</td>
								<td>${car.sede}</td>
								<td>${car.objetivo}</td>
								<%-- 
								<td>								
									<c:forEach var="entry" items="${departmentList}">        
									      <c:if test="${entry.key == emp.department.departmentId}">
									           ${entry.value}
									      </c:if>
									</c:forEach>
								</td>
								--%>
								<td><a
									href="<%=request.getContextPath()%>/admin/emp/editform/${car.pfr_id}"
									class="btn btn-info btn-xs"> <i
										class="glyphicon glyphicon-check"></i>Edit
								</a></td>
								<td><a
									href="<%=request.getContextPath()%>/admin/emp/deleteform/${car.pfr_id}"
									class="btn btn-danger btn-xs"> <i
										class="glyphicon glyphicon-trash"></i> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
			<font color="red">${message}</font>
		</div>
	</div>
</body>
</html>
