<%@ taglib uri="http://www.springframework.org/tags" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<style>
h1 {
	text-align: left;
	color: blue;
	padding: 2%;
	border: 1opx 5px;
	font-size: small;
}

body.div {
	color: green;
	text-align: center;
}

body.table {
	color: green;
	text-align: center;
}
<
script

type


="
text
/

javascript


"
>
<
button



onclick








="
return




 




confirm


(


'
Are


you


sure


you


want


to


Delete


?'
)


;"
id
="


btnDelete


"
>
DELETE


</button>
function validateform() {
    var flag = true;
    var name1 = document.forms['myfrm']["pname"].value;
   
    var lengt = name1.length;
    if (lengt > 25) {
      setError("nameId", " * name length is too long should be 5 to 25");
      return false;
    }
    else if (lengt < 3) {
      setError("nameId", " * name length is to short");
      return false;
    }
  
    return flag;
</script>
</style>
<body>
	<h2 align="center" style="border: aqua; color: brown;">Welcome To
		Product Management</h2>
	
		<form action="/search" method="post"
			style="text-align: end; font-size: initial; color: darkblue; display: -webkit-inline-box" onsubmit="'return validateform();'" name="myfrm">
			<div class="nameDiv" id="nameId">Name<input type="text" name="pname" required /></div>&nbsp;&nbsp;
			<div class="priceDiv" id="priceId">Price<input type="text" name="price" required/></div> &nbsp;&nbsp;
			<div class="toDiv" id="toId">To<input type="text" name="to" required/> <input type="submit" value="submit"></div>
		</form>
	


	<h4 style="text-align: end;">
		<a href="/add?id=0">Add New Item</a>
	</h4>
	<table border="3" style="width: 100%;">
		<tr style="background-color: darkseagreen;">
			<td>Id</td>
			<td>Name</td>
			<td>price</td>
			<td>catagory</td>
			<td colspan="2">Action</td>
		</tr>

		<jstl:forEach items="${values}" var="localer">
			<tr>
				<td>${localer.id}</td>
				<td>${localer.name}</td>
				<td>${localer.price}</td>
				<td>${localer.category}</td>
				<td><a href="/add?id=${localer.id}">Edit</a></td>
				<td><a href="/deletet?id=${localer.id}"
					onclick="return confirm('Are you sure want to Delete');">Remove</a></td>
			</tr>
		</jstl:forEach>

		<jstl:if test="${currentPage>=1&&currentPage>=0}">
			<a href=/page/1>First</a>&nbsp;&nbsp;&nbsp;
        </jstl:if>

		<jstl:if test="${currentPage>1&&currentPage!=0}">
			<a href="/page/${currentPage-1}">Prev</a>&nbsp;&nbsp;&nbsp;
        </jstl:if>

		<jstl:forEach var="i" begin="2" end="${totalPages}">
			<a href="/page/${i}">${i}</a>&nbsp;&nbsp;
      </jstl:forEach>
		<jstl:if test="${currentPage<totalPages}">
			<a href="/page/${currentPage+1}">Next</a> &nbsp;&nbsp;&nbsp;
        </jstl:if>

		<jstl:if test="${currentPage<totalPages}">
			<a href="/page/${totalPages}">Last</a> &nbsp;&nbsp;&nbsp;
        </jstl:if>



		</div>

	</table>


</body>

