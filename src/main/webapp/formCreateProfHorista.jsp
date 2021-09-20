<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.edu.ifrs.poa.classes.ProfessorHorista"%>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Confirmação de cadastro de professor</title>
    </head>
    <body>    
        <jsp:useBean id="ProfessorHoristaBean" class="br.edu.ifrs.poa.classes.ProfessorHorista" scope="request"/>
        <jsp:setProperty name="ProfessorHoristaBean" property="*" /> 
        <% if (ProfessorHoristaBean.create()>0) { %>
	         <jsp:forward page="createProfHorista.jsp?message=Success"/>
        <% } else {%>
		     <jsp:forward page="createProfHorista.jsp?message=Error"/>
        <%}%>
    </body>
</html>