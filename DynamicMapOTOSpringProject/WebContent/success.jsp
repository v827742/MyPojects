<%@page import="com.cjc.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("E:/41.jpg");
}
</style>
<script type="text/javascript">
function updateData() {
	alert("go for update!!");
	document.myform.action="edit"
	document.myform.submit();
}
function deleteData() {
	alert("are u sure!!!");
	document.myform.action="delete"
	document.myform.submit();
}
function addData() {
	alert("add record!!");
	document.myform.action="register.jsp"
	document.myform.submit();
}
</script>
</head>
<center>
<body>
<h3 style="color:red">Student Data</h3>
<form name="myform">
<table border="1" style="background-color: pink">
<tr>
<th>RollNo</th>
<th>Name</th>
<th>Mobile No</th>
<th>Email Id</th>
<th>Password</th>
<th>Address Id</th>
<th>CityName</th>
<th>AreaName</th>
</tr>

<% List<Student> slist=(List)request.getAttribute("data");

   for(Student stu:slist)
{%>
<tr>
<td><input type="radio" name="rollno" value="<%=stu.getRollno() %>">
<%=stu.getRollno()%></td>
<td><%=stu.getName() %></td>
<td><%=stu.getMono() %></td>
<td><%=stu.getEmail() %></td>
<td><%=stu.getPass() %></td>
<td><%=stu.getAddr().getAid() %></td>
<td><%=stu.getAddr().getCityname() %></td>
<td><%=stu.getAddr().getAname() %></td>
</tr>
<%} %>


</table>
<input  type="button" value="update" onclick="updateData()">
<input  type="button" value="delete" onclick="deleteData()">
<input  type="button" value="add" onclick="addData()">
</form>
</body>

</html>