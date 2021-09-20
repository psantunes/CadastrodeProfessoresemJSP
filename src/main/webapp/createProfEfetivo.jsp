<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="errorPage.jsp"%>
<% 
	String message = request.getParameter("message");
%>
<c:set var="pageTitle" scope="request" value="Cadastrar professor efetivo" />

<jsp:include page="header.jsp" />

<% if (request.getSession(false).getAttribute("userLogin") == null) { %>
     <c:redirect url="index.jsp"/>
<% } else {  %>

	<main class="container">
	
	<div class="card mx-auto col-12 col-sm-6 col-md-4 m-5">
	
	  <div class="card-body">
	
		<% if (message != null && message.equals("Success")) { %>
			<div class="alert alert-success" role="alert">
			  Professor cadastrado com sucesso! Deseja inserir mais um?
			</div>
		<% } %>
		<% if (message != null && message.equals("Error")) { %>
			<div class="alert alert-danger" role="alert">
			  Ocorreu um erro ao cadastrar o professor. Revise os dados digitados e tente novamente.
			</div>
		<% } %>
	
	    <h5 class="card-title mb-5">Cadastrar professor efetivo</h5>
	
			<form method="POST" action="formCreateProfEfetivo.jsp">
				<div class="mb-3">
				    <label for="nome" class="form-label">Nome</label>
				    <input  type="text" name="nome" class="form-control">
				</div>
				<div class="mb-3">
				    <label for="matricula" class="form-label">Matrícula</label>
				    <input type="text" name="matricula" class="form-control">
				</div>
					  <div class="mb-3">
					    <label for="salario" class="form-label">Salário</label>
					    <input type="text" name="salario" class="form-control">
					  </div>  
		
				  <div class="mb-3">
					<button type="submit" class="btn btn-primary px-4">Enviar</button>
					<button type="reset" class="btn btn-secundary">Limpar</button>
				  </div>
			</form> 
	
	  </div>
	</div>
	
	</main>
<% } %>
<jsp:include page="footer.html" />