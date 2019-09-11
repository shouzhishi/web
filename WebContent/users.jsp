<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="refresh" content="1" />
</head>
<body>
	<%
		String myself = session.getAttribute("myself").toString();
		Object obj = application.getAttribute("users");
		List<String> list = (ArrayList<String>)obj;
		for(String name : list){
			if(name.equals(myself)){
				out.print("<font color='red'>"+name+"</font><br>");
			}else{
				out.print("<font color='blue'>"+name+"</font><br>");
			}
		}
	%>
</body>
</html>