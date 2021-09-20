<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.edu.ifrs.poa.classes.ProfessorEfetivo"%>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Confirmação de cadastro de professor</title>
    </head>
    <body>    
        <jsp:useBean id="ProfessorEfetivoBean" class="br.edu.ifrs.poa.classes.ProfessorEfetivo" scope="request"/>
        <jsp:setProperty name="ProfessorEfetivoBean" property="*" /> 
        <% if (ProfessorEfetivoBean.create()>0) { %>
	         <jsp:forward page="createProfEfetivo.jsp?message=Success"/>
        <% } else {%>
		     <jsp:forward page="createProfEfetivo.jsp?message=Error"/>
        <%}%>
    </body>
</html>
