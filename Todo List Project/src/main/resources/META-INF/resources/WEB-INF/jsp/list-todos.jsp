<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	Your Todo are: 
	<div class="container">
		<table class="table table-striped">
			<caption>Your todos are</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is it Done?</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-todo?id=${todo.id}">Update</a>
						<td><a type="button" class="btn btn-warning"
							href="/delete-todo?id=${todo.id}">Delete</a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="button">
		<a href="/add-todo">Add a Todo</a>
	</div>
<%@ include file="common/footer.jspf" %>
	
	