<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jstl_study.Car" %>
    <%@ page import="java.util.ArrayList" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
		//post 방식의 한글인코딩 처리
		request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 주문자명 : ${param.customer }</h3>
	<h3>주문메뉴</h3>
	<c:forEach items="${paramValues.menu }" var="food" varStatus="i">
	 ${i.count }.${food}<br>
	</c:forEach>

	<hr>
	
	<% 
		Car car = new Car("1234","소나타",2000);
		request.setAttribute("car", car);
	%>
	<!-- Car 객체를 출력 name : getName -->
	<h3>${requestScope.car.name }</h3>
	<h3>${car.num }</h3>
	<h3>${car.price }</h3>
	
	<%
		ArrayList<Car> list = new ArrayList<>();
		list.add(car);
		list.add(new Car("4567", "모닝", 1500));
		list.add(new Car("1111", "그랜저", 3500));
		list.add(new Car("2222", "스파크", 1500));
		//request.setAttribute("list", list);
		//session 객체는 다른 jsp에서도 사용가능
		session.setAttribute("list", list);
	%>
	<c:forEach items="${list}" var="c" varStatus="i">
		${i.count }. ${c } => toString <br>
	</c:forEach>
	<hr>
	<c:forEach items="${list}" var="c" varStatus="i">
		<h3>${i.count }. ${c.name }</h3>
	</c:forEach>
	<a href="step-7.jsp">step-7.jsp로 이동</a>
	
	
	
</body>
</html>