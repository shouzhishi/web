<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg = request.getParameter("msg");
		String nickname = session.getAttribute("myself").toString();
		String temp = nickname+"说："+msg;
		Object obj = application.getAttribute("msgs");
		if(obj==null){
			List<String> list = new ArrayList<String>();
			list.add(temp);
			application.setAttribute("msgs", list);
		}else{
			List<String> list = (List<String>)obj;
			list.add(temp);
			application.setAttribute("msgs", list);
		}
		response.sendRedirect("send.jsp");
	%>
</body>
</html>