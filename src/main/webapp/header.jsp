<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<title>${pageTitle}</title>
</head>
<body>

	<!-- Menu -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
	  <div class="container">
	    <h1><a class="navbar-brand" href="index.jsp">Cadastro de Professores<br><span>Desenvolvido por Antonio Paulo Serpa Antunes</span></a></h1>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav ms-auto">
	      
	      <% if (request.getSession(false).getAttribute("userLogin") == null) { %>
		        <li class="nav-item">
		          <a class="nav-link btn btn-primary px-4 active" href="#" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a>
		        </li>
		  <% } else {  %>
	        
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Cadastrar 
		          </a>
		          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="createProfEfetivo.jsp">Professor efetivo</a></li>
		            <li><a class="dropdown-item" href="createProfHorista.jsp">Professor horista</a></li>
		          </ul>
		        </li>
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Listar
		          </a>
		          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="listProfEfetivo.jsp">Professor efetivo</a></li>
		            <li><a class="dropdown-item" href="listProfHorista.jsp">Professor horista</a></li>
		          </ul>
		        </li>
			   <li class="nav-item">
			     <a class="nav-link" href="logout.jsp">Logout</a>
			   </li>
			<% } %>
	      
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- Fim menu -->
	