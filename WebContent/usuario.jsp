<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="ls-theme-indigo">
<head>
<title>Cadastro de Usu�rio | G.Financeiro</title>

<meta charset="utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="Sistema financeiro">
<link href="css/estiloGfinancas.css" rel="stylesheet" type="text/css">
<link rel="icon" sizes="192x192" href="images/ico-boilerplate.png">
<link rel="apple-touch-icon" href="images/ico-boilerplate.png">
<link href="css/metro/crimson/jtable.css" rel="stylesheet"
	type="text/css" />
<link href="css/jquery-ui-1.10.3.custom.css" rel="stylesheet"
	type="text/css" />

<script src="javascripts/libs/jquery.mask.js" type="text/javascript"></script>
<script src="javascripts/jquery-1.8.2.js" type="text/javascript"></script>
<script src="javascripts/jquery-ui-1.10.3.custom.js"
	type="text/javascript"></script>
</head>
<body>
	<div class="ls-topbar ">

		<!-- Barra de Notifica��es -->
		<div class="ls-notification-topbar">

			<!-- Links de apoio -->
			<div class="ls-alerts-list">
				<a href="#" class="ls-ico-question" data-ls-module="topbarCurtain"
					data-target="#ls-feedback-curtain"><span>Ajuda</span></a>
			</div>

			<!-- Dropdown com detalhes da conta de usu�rio -->
			<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
				<a href="#" class="ls-ico-user"> <span class="ls-name">Admim</span>
					(Usuario)
				</a>

				<nav class="ls-dropdown-nav ls-user-menu">
					<ul>
						<li><a href="#">Sair</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<span class="ls-show-sidebar ls-ico-menu"></span> <a href="#"
			class="ls-go-next"><span class="ls-text">Voltar</span></a>

		<!-- Nome do produto/marca com sidebar -->
		<h1 class="ls-brand-name">
			<a href="home" class="ls-ico-earth"> <small>Modulo
					financeiro</small> G.Financeiro
			</a>
		</h1>

		<!-- Nome do produto/marca sem sidebar quando for o pre-painel  -->
	</div>


	<aside class="ls-sidebar">

		<div class="ls-sidebar-inner">
			<a href="" class="ls-go-prev"><span class="ls-text">Voltar</span></a>

			<nav class="ls-menu">
				<ul>
					<li><a href="index.jsp" class="ls-ico-dashboard"
						title="Dashboard">Dashboard</a></li>
					<li><a href="movimentos.jsp" class="ls-ico-trophy"
						title="Movimentos">Movimentos</a></li>
					<li><a href="#" class="ls-ico-stats"
						title="Relat�rios da revenda">Relat�rio mensal</a></li>
					<li><a href="#" class="ls-ico-cog" title="Cadastros">Cadastros</a>
						<ul>
							<li><a href="cliente.jsp">Cliente</a></li>
							<li><a href="fornecedor.jsp">Fornecedor</a></li>
							<li><a href="categoria.jsp">Categoria</a></li>
							<li><a href="usuario.jsp">Usuario</a></li>
						</ul></li>
				</ul>
			</nav>


		</div>
	</aside>

	<main class="ls-main ">
	<div class="container-fluid">
		<h1 class="ls-title-intro ls-ico-text2">Usu�rio</h1>
		<!-- Migalhas de p�o -->
		<ol class="ls-breadcrumb">
			<li><a href="index.jsp">In�cio</a></li>
			<li>Usu�rio</li>
		</ol>
		<br>

		<div class="ls-txt-right">
			<button data-ls-module="modal" data-target="#myAwesomeModal"
				class="ls-btn-primary">
				<span class="ls-ico-user-add"> </span> Cadastrar novo usu�rio
			</button>
		</div>
		<!-- Grid de registros -->
		<table class="ls-table ls-table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Usu�rio</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="tabela"></tbody>
		</table>
		<!-- Pagina��o da tabela -->
		<div class="ls-pagination-filter">
			<ul class="ls-pagination">
				<li class="ls-disabled"><a href="#">&laquo; Anterior</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li class="ls-active"><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">Pr�ximo &raquo;</a></li>
			</ul>
		</div>
	</div>

	<!-- Modal de cadastro -->
	<div class="ls-modal" id="myAwesomeModal">
		<form id="cusuario" method="GET"
			class="ls-form ls-form-horizontal row">
			<div class="ls-modal-large">
				<div class="ls-modal-header">
					<button data-dismiss="modal">&times;</button>
					<h4 class="ls-modal-title">Cadastrar novo usu�rio</h4>
				</div>
				<div class="ls-modal-body">
					<fieldset>	
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Nome do usu�rio</b> <input type="text"
							name="nome" placeholder="Digite o seu nome"
							class="ls-field" required>
						</label>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Email do usu�rio</b> <input type="email"
							name="email" placeholder="Digite o seu email" class="ls-field"
							required>
						</label>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Usu�rio</b> <input type="text"
							name="usuario" placeholder="Digite seu usu�rio" class="ls-field"
							required>
						</label>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Senha</b> <input type="password"
							name="senha" placeholder="Digite sua senha"
							class="ls-field" required>
						</label>
						<input type="hidden" name="ativo" value="1"> <!-- Passa o usuario sempre ativo no cadastro -->
					</fieldset>
				</div>
				<div class="ls-modal-footer ls-txt-right ls-actions-btn">
					<button type="submit" class="ls-btn-primary">Salvar</button>
					<button type="reset" class="ls-btn">Limpar</button>
					<button class="ls-btn-danger" data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</form>
	</div>
	<!-- Modal de editar -->
	<div class="ls-modal" id="modalEdita">
		<form id="cusuarioedita" method="GET"
			class="ls-form ls-form-horizontal row">
			<div class="ls-modal-large">
				<div class="ls-modal-header">
					<button data-dismiss="modal">&times;</button>
					<h4 class="ls-modal-title">Editar usu�rio</h4>
				</div>
				<div class="ls-modal-body">
					<fieldset>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Codigo</b> <input type="text"
							name="idusuario" id="idusuario" class="ls-field" value="" disabled="disabled">
						</label>					
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Nome do usu�rio</b> <input type="text"
							name="nome" id="nome" placeholder="Digite o seu nome"
							class="ls-field" required>
						</label>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Email do usu�rio</b> <input type="email"
							name="email" id="email" placeholder="Digite o seu email" class="ls-field"
							required>
						</label>
						<label class="ls-label col-md-4 col-xs-12"> <b
							class="ls-label-text">Usu�rio</b> <input type="text"
							name="usuario" id="usuario" placeholder="Digite seu usu�rio" class="ls-field"
							required>
						</label>
						<input type="hidden" name="ativo" value="1"> <!-- Passa o usuario sempre ativo no cadastro -->
					</fieldset>
				</div>
				<div class="ls-modal-footer ls-txt-right ls-actions-btn">
					<button type="submit" class="ls-btn-primary">Salvar</button>
					<button type="reset" class="ls-btn">Limpar</button>
					<button class="ls-btn-danger" data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</form>
	</div>
	</main>

	<aside class="ls-notification">
		<nav class="ls-notification-list" id="ls-feedback-curtain"
			style="left: 1796px;">
			<h3 class="ls-title-2">Ajuda</h3>
			<ul>
				<li><a href="#">&gt; Manual</a></li>
			</ul>
		</nav>
	</aside>

<!-- Modal sucesso! -->

<div class="ls-modal" id="cadastroSucesso">
  <div class="ls-modal-box">
    <div class="ls-modal-header">
      <button data-dismiss="ls-dismissable">&times;</button>
      <h4 class="ls-modal-title">Sucesso</h4>
    </div>
    <div class="ls-modal-body" id="myModalBody">
      <p>Cadastrado com sucesso!</p>
    </div>
    <div class="ls-modal-footer">
      <button class="ls-btn ls-float-right" data-dismiss="ls-dismissable"> N�o </button>
      <button id="confirma" type="submit" class="ls-btn-primary ls-float-right"> Sim </button>
    </div>
  </div>
</div>



	<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
	<script src="javascripts/libs/jquery-2.1.0.min.js"
		type="text/javascript"></script>
	<script src="javascripts/locastyle.js" type="text/javascript"></script>
	<script>
        $(function () { 
        	$.ajax({
        		url:'http://localhost:8080/app/usuario',
        		method:'GET',
        		cache:false,
        		data:{metodo:'listar'},
        		success: function(dados){
        			for(i in dados){
        				//console.log(dados);
        				var id = dados[i].idusuario;
        				var newRow = $("<tr>");
        			    var cols = "";

        			    cols += '<td>'+dados[i].nome+'</td>';
        			    cols += '<td>'+dados[i].email+'</td>';
        			    cols += '<td>'+dados[i].usuario+'</td>';
        			    cols += '<td>';
        			    cols += '<a href="#" onclick="editarRegistro('+id+')" class="ls-btn-sm">Editar</a>';
        			    cols += '<a href="#" onclick="apagarRegistro('+id+')" class="ls-btn-primary-danger ls-btn-sm">Excluir</a>';
        			    cols += '</td>';

        			    newRow.append(cols);
        			    $("#tabela").append(newRow);
        			}        			
        		} 
        	});
        });
        // fun��o cadastrar
    	$("#cusuario").submit(function(e) {
    	    var url = "http://localhost:8080/app/usuario?metodo=cadastrar";
    	    $.ajax({
    				type: "GET",
    				url: url,
    				data: $("#cusuario").serialize(),
    				success: function(data){
    					$('#cusuario').each (function(){
    			            this.reset();
    			        });
    				    locastyle.modal.close();  // fecha a modal
    		    	    location.reload();        // carrega pagina
    				}
    			});
    	    e.preventDefault();
    	});
        // fun��o excluir
		function apagarRegistro(id) {
        	var url = 'http://localhost:8080/app/usuario';
        	$.ajax ({
        		url: url+"?metodo=excluir&idusuario="+id,
		        type:'GET',
		        success:function(res){
		        	if (res != 'success') {
		        		alert("Registro apagado com sucesso.");
		        		history.go(0);
		        		}
		        	}
        	});
        }
        // fun��o editar
		function editarRegistro(id) {
        	var url = 'http://localhost:8080/app/usuario';
        	$.ajax ({
        		url: url+"?metodo=editar&idusuario="+id,
		        type:'GET',
		        success:function(data){ 
		        		for(i in data){
		        			var id = data[i].idusuario;
		        			$("#idusuario").val(id)
		        			$("#nome").val(data[i].nome)
		        			$("#email").val(data[i].email)
		        			$("#usuario").val(data[i].usuario)
		        			//console.log(data);	
		        		}
		        	locastyle.modal.open("#modalEdita");
		        }
        	});
          }
        // fun��o atualizar
    	$("#cusuarioedita").submit(function(e) {
    	    var url = "http://localhost:8080/app/usuario?metodo=cadastrar";
    	    $.ajax({
    				type: "GET",
    				url: url,
    				data: $("#cusuarioedita").serialize(),
    				success: function(data){
    				    locastyle.modal.close();  // fecha a modal
    		    	    location.reload();        // carrega pagina
    				}
    			});
    	    e.preventDefault();
    	});        
  </script>
</body>
</html>