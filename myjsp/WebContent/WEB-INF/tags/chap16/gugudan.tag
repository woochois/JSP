<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ attribute name="dan" %>

<c:forEach var="num" begin="1" end="9" >
	${dan} * ${num} = ${dan * num} <br />
</c:forEach>