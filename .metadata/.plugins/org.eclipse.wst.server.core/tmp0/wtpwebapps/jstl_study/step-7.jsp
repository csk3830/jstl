<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="jstl_study.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<h1>step-7.jsp 화면</h1>
	<%
		ArrayList<Student> list = new ArrayList<>();
		list.add(new Student(1000,"홍길동","010-1234-1234","seoul",34));
		list.add(new Student(1002,"김길동","010-2222-3333","incheon",24));
		list.add(new Student(1003,"박길동","010-3333-4444","jeju",28));
		list.add(new Student(1004,"이길동","010-5555-5555","busan",25));
		list.add(new Student(1005,"최길동","010-6666-7777","incheon",25));
		request.setAttribute("list", list);
	%>
	<h3>학생명단</h3>
<%-- 	<c:forEach items="${list }" var="s" varStatus="i">
		<h3>${i.count}. ${s }</h3>
	</c:forEach> --%>
	<hr>
	<table class="table table-striped">
		<thead> 
			<tr>
				<th>no</th>
				<th>학번</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>나이</th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${list }" var="s" varStatus="i">
		<tr>
			<td>${i.count }</td>
			<td>${s.num }</td>
			<td>${s.name }</td>
			<td>${s.phone }</td>
			<td>${s.addr }</td>
			<td>${s.age }</td>
		</tr>
	</c:forEach>
		</tbody>
	</table>
</body>
</html>