<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<jsp:forward page="./main/main.do"></jsp:forward>
	
<c:if test="${empty sessUser}">
	<jsp:forward page="./users/login.do"></jsp:forward>
</c:if>
<c:if test="${not empty sessUser}">
	<jsp:forward page="./article/list.do"></jsp:forward>
</c:if>