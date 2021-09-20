<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<c:set var="pageTitle" scope="request" value="Erro" />

<jsp:include page="header.jsp" />

<main class="container">
	<div class="card mx-auto col-12 col-sm-8 m-5 p-5">
         <h5>Ooops, algo deu errado aqui!</h5>
         <p>Erro: <%=exception%></p>
	</div>
</main>

<jsp:include page="footer.html" />