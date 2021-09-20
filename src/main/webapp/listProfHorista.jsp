<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.*"%>
<%@page import="br.edu.ifrs.poa.classes.ProfessorHorista"%>
<%@page errorPage="errorPage.jsp" %>
<c:set var="pageTitle" scope="request" value="Lista professores horistas" />

<jsp:include page="header.jsp" />

<% if (request.getSession(false).getAttribute("userLogin") == null) { %>
     <c:redirect url="index.jsp"/>
<% } else {  %>
	<main class="container">
	    <jsp:useBean id="professorHoristaBean" class="br.edu.ifrs.poa.classes.ProfessorHorista" scope="request"/>
	    <%  
		    List<ProfessorHorista> lista=professorHoristaBean.listAll();  
		    request.setAttribute("listaR",lista);  
	    %>  
		<div class="card mx-auto col-12 col-sm-7 m-4 p-4">
		
		    <h5 class="card-title mb-5">Lista professores horistas</h5>
	
			<table class="table table-bordered" id="table" data-toggle="table" data-search="true" data-search-text="">
			  <thead>
			    <tr class="table-warning text-center">
			      <th data-field="nome" data-sortable="true">Nome</th>
			      <th data-field="matricula" data-sortable="true">Matrícula</th>
			      <th data-field="totalhoras" data-sortable="true">Total horas</th>
			      <th data-field="valorporhora" data-sortable="true">Valor por hora</th>
			    </tr>
			  </thead>
			  <tbody>
			      <c:forEach var="professorHorista" items="${listaR}">
			    	<tr>
			           <td>${professorHorista.getNome()}</td>
			    	   <td style="text-align: right;">${professorHorista.getMatricula()}</td>
			    	   <td style="text-align: right;">${professorHorista.getTotalHoras()}</td>
			    	   <td style="text-align: right;">R$ 
			    	   <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${professorHorista.getValorHora()}"/>
			    	</tr>
			    	
			      </c:forEach>
			  </tbody>
			</table>
		</div>
	</main>
<% } %>
<jsp:include page="footer.html" />