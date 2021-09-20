<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.*"%>
<%@page import="br.edu.ifrs.poa.classes.ProfessorEfetivo"%>
<%@page errorPage="paginaErro.jsp" %>
<c:set var="pageTitle" scope="request" value="Lista professores efetivos" />

<jsp:include page="header.jsp" />

<% if (request.getSession(false).getAttribute("userLogin") == null) { %>
     <c:redirect url="index.jsp" />
<% } else {  %>
	<main class="container">
	
	    <jsp:useBean id="professorEfetivoBean" class="br.edu.ifrs.poa.classes.ProfessorEfetivo" scope="request"/>
	    <%  
		    List<ProfessorEfetivo> lista=professorEfetivoBean.listAll();  
		    request.setAttribute("listaReq",lista);  
	    %>  
	
		<div class="card mx-auto col-12 col-sm-7 m-4 p-4">
		
		    <h5 class="card-title mb-5">Lista professores efetivos</h5>
	
			<table class="table table-bordered" id="table" data-toggle="table" data-search="true">
			  <thead>
			    <tr class="table-warning text-center">
			      <th data-field="professor" data-sortable="true">Nome</th>
			      <th data-field="matricula" data-sortable="true">Matrícula</th>
			      <th data-field="salario" data-sortable="true">Salário</th>
			    </tr>
			  </thead>
			  <tbody>
			      <c:forEach var="professorEfetivo" items="${listaReq}">
			    	<tr>
			           <td>${professorEfetivo.getNome()}</td>
			    	   <td style="text-align: right;">${professorEfetivo.getMatricula()}</td>
			    	   <td style="text-align: right;">R$ 
			    	   <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${professorEfetivo.getSalario()}"/>
			    	   </td>
			    	</tr>
			      </c:forEach>
			  </tbody>
			</table>
		</div>
	</main>
<% } %>

<jsp:include page="footer.html" />