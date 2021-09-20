<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.edu.ifrs.poa.dao.UsuarioDAO"%>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Confirmação de cadastro de professor</title>
    </head>
    <body>    
        <jsp:useBean id="UsuarioBean" class="br.edu.ifrs.poa.classes.Usuario" scope="request"/>
        <jsp:setProperty name="UsuarioBean" property="*" />
        <% if (UsuarioDAO.authenticate(UsuarioBean) == true) { %>

	    	<% 
	    	HttpSession newSession = request.getSession(true);
	       	newSession.setAttribute("userLogin", 1); %>
	        <jsp:forward page="index.jsp"/>

	    <% } else { %>

		     <jsp:forward page="index.jsp?message=Error"/>

        <%}%>
		

     </body>
</html>