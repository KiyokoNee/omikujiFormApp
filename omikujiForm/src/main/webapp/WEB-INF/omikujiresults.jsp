<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Omikuji Results</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<h1>Here's your Omikuji!</h1>
		<p id="results">
			In <c:out value="${count}"></c:out> years, you will live in
			<c:out value="${city}"></c:out> with <c:out value="${name}"></c:out>
			as your roommate, <c:out value="${hobby}"></c:out> for a 
			living. The next time you see a <c:out value="${animal}"></c:out>,
			 you will have good luck. Also, <c:out value="${nicething}"></c:out>.
		</p>
		<div class="centeranchor">
			<a href="/omikuji">Go Back</a>
		</div>
	</body>
</html>