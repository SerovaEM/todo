<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%--@elvariable id="todo" type="net.guides.springboot.todomanagement.model.Todo"--%>
<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-lg" href="/add-todo">Add new Task</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of my Tasks</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped" id="list-todo">
				<thead>
					<tr>
						<th width="30%">Description
							<span class="glyphicon glyphicon-sort-by-attributes" id="sortByDescription"/>
						</th>
						<th width="30%">Target Date</th>
						<th width="20%">Done
						</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody id="list-todo-body">
					<c:forEach items="${todos}" var="todo">
						<tr <c:if
							test="${todo.taskDone}"> class="text-muted" </c:if> id="${todo.id}tr" >
							<td title="${todo.comment}">${todo.description}</td>
							<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td>
								<input type="checkbox" class="form-check-input" id="${todo.id}" <c:if
										test="${todo.taskDone}"> checked="checked" </c:if>/>
							</td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>
<script>
	$(document).ready(function () {
		$('#sortByDescription').click(function () {
			var table = $('#list-todo');
			var tbody = $('#list-todo-body');
			var className = this.className;
			var sort = (className.indexOf('glyphicon-sort-by-attributes-alt') + 1) ? "desc" : "asc";
			console.log(className + " " + sort);
			tbody.find('tr').sort(function (a, b) {
				if (sort === 'asc') {
					return $('td:first', a).text().localeCompare($('td:first', b).text());
				} else {
					return $('td:first', b).text().localeCompare($('td:first', a).text());
				}

			}).appendTo(tbody);
			$('#sortByDescription').toggleClass('glyphicon-sort-by-attributes');
			$('#sortByDescription').toggleClass('glyphicon-sort-by-attributes-alt');
		});
			$('.form-check-input').click(function () {
				var check = !!$(this).is(':checked');
				var tr_id ="#" + this.id + 'tr';
				$.ajax({
					url: "update-done?id=" + this.id + '&done=' + check,
					success: function (result) {
						$(tr_id).toggleClass("text-muted");
					}
				})
			});
	});
</script>
