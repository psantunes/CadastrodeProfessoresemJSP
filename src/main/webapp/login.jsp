<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="errorPage.jsp" %>
<% String message = request.getParameter("message"); %>


<!-- Modal de login -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">Login na aplicação</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

		<% if (message.equals("Error")) { %>
			<div class="alert alert-danger" role="alert">
			  Login e senha incorretos. Revise os dados e tente novamente.
			</div>
		<% } %>

		<form method="POST" action="formLogin.jsp">
		  <div class="mb-3">
		    <label for="nome">Nome</label>
		    <input type="text" class="form-control" name="nome" placeholder="Nome do usuário">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1">Senha</label>
		    <input type="password" class="form-control" name="senha" placeholder="Senha">
		  </div>
		  <div class="mb-3">
		  <button type="submit" class="btn btn-primary px-4">Login</button>
		  </div>
		</form>

      </div>
    </div>
  </div>
</div>
<!-- Fim do modal -->
