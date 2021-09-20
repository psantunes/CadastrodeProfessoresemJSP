<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="errorPage.jsp"%>
<c:set var="pageTitle" scope="request" value="Cadastro de Professores em Java, por Antonio Paulo Serpa Antunes" />
<% String message = request.getParameter("message"); %>

<jsp:include page="header.jsp" />

<jsp:include page="login.jsp">
    <jsp:param name="message" value="<%=message%>" />
</jsp:include>

<!-- script para abrir o modal na tela em caso de erro no login -->
<% if (message != null && message.equals("Error")) { %>
	<script>
	window.onload = function() {
		$('#loginModal').modal('show');
	};
	</script>
<% } %>
        
<jsp:include page="footer.html" />