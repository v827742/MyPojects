<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function RegData() 
{
	alert("reg ok.");
	
	
	var eid=document.getElementById("eid").value;
	var un=document.getElementById("uname").value;
	var ps=document.getElementById("pass").value;
	var nm=document.getElementById("name").value;
	var addr=document.getElementById("address").value;
	var mono=document.getElementById("mono").value;
	
	
	
	
	var req=new XMLHttpRequest();
	var url="http://localhost:4041/postData";
	
	req.open("POST",url,true);
	
	var data= {
		    eid: eid,
		    uname: un,
		    pass:ps,
		    name:nm,
		   address:addr,
		    mono:mono
		}
	alert(data);
	
     var emp=JSON.stringify(data);
     alert(emp);
	req.setRequestHeader("Content-Type", "application/json");
	
	
	req.send(emp);
	alert("success");
	req.onreadystatechange=function()
	{
		alert(req.readyState);
		alert(req.status);
		if(req.readyState==4 && req.status==200)
			{
			alert("Successful");
			 console.log(req.responseText);
			}
	}
	
}
</script>
</head>
<body>
<table>


<tr>
<th>Employee Id:</th>
<td><input type="text" name="eid" id="eid"></td>
</tr>

<tr>
<th>UserName:</th>
<td><input type="text" name="uname" id="uname"></td>
</tr>

<tr>
<th>PassWord:</th>
<td><input type="password" name="pass" id="pass"></td>
</tr>

<tr>
<th>Employee Name:</th>
<td><input type="text" name="name" id="name"></td>
</tr>

<tr>
<th>Employee address:</th>
<td><input type="text" name="address" id="address"></td>
</tr>

<tr>
<th> Mobile No:</th>
<td><input type="number" name="mono" id="mono"></td>
</tr>

</table>
<input type="submit" vlaue="Register" onclick="RegData()">
</body>
</html>