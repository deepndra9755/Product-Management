<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<body style="background-color: blanchedalmond;">

	<h2 align="center" style="border: aqua;color: brown;">Product Management</h2>

	<table border="3" style="width: 100%;">
		<tr style="background-color: darkseagreen;" >
			<td>Id</td>
			<td>Name</td>
			<td>price</td>
			<td>catagory</td>
			<td colspan="2">Action</td>
		</tr>

		<jstl:forEach items="${category}" var="localer">
			<tr>
				<td>${localer.id}</td>
				<td>${localer.name}</td>
				<td>${localer.price}</td>
				<td>${localer.category}</td>
				<td><a href="/add?id=${localer.id}">Edit</a></td>
				<td><a href="/deletet?id=${localer.id}"
					onclick="return confirm('Are you sure you want to Delete');">Remove</a></td>
			</tr>
		</jstl:forEach>

	</table>
	<a href="welcome">Home</a>
</body>