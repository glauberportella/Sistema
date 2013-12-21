<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.edu.udc.sistemas.ia6.emanuelvictor.entity.Client"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style-menu-usecase.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Cliente Pessoa F�sica</title>
<script type="text/javascript">
	function find() {
		document.getElementById("newAction").value = "find";
		document.getElementById("frm").submit();		
	}
	function clean() {
		document.getElementById("newAction").value = "goFind";
		document.getElementById("frm").submit();
	}
	function deleteList(id) {
		if (confirm("Deseja apagar o registro?")) {
			document.getElementById("id").value = id;
			document.getElementById("newAction").value = "delete";
			document.getElementById("frm").submit();
		}		
	}
	function detail(id) {
		document.getElementById("id").value = id;
		document.getElementById("newAction").value = "detail";
		document.getElementById("frm").submit();
	}
	function goNew() {
		document.getElementById("newAction").value = "goNew";
		document.getElementById("frm").submit();
	}
</script>
<%
	Client clientFilter = (Client) request.getSession().getAttribute("filterClient");
	if (clientFilter == null) {
		clientFilter = new Client();
	}
	Object list[] = (Object[]) request.getAttribute("list");
%>
</head>
<body>
<div id="title">Consultar Cliente Pessoa F�sica</div>
	<form name="frm" id="frm" method="post" action="./dispatcher">
		<input type="hidden" name="newAction" id="newAction"/>
		<input type="hidden" name="entityName" id="entityName" value="Client"/>
		<input type="hidden" name="id" id="id"/>
		<div class="label">Nome:</div>	
		<input class="field" type="text" name="name" id="name" maxlength="100" value="<%=(clientFilter.getName() != null) ? clientFilter.getName() : ""%>"/>
		<div class="label">RG:</div>
		<input class="field" type="text" name="rg" id="rg" maxlength="100" value="<%=(clientFilter.getRg() == null) ? "" : clientFilter.getRg()%>" />
		<div class="label">CPF:</div>
		<input class="field" type="text" name="cpf" id="cpf" maxlength="100" value="<%=(clientFilter.getCpf() == null) ? "" : clientFilter.getCpf()%>" />
		<div class="label">Endere�o:</div>
		<input class="field" type="text" name="address" id="address" maxlength="100" value="<%=(clientFilter.getAddress() == null) ? "" : clientFilter.getAddress()%>" />
		<div  id="menu" align="left" >
			<ul>
				<li ><a href="javascript:find();">Consultar</a></li>
				<li><a href="javascript:goNew();">Cadastrar</a></li>
				<li><a href="javascript:clean();">Limpar</a></li>
			</ul>
		</div>
			<table id="table" cellspacing="0" cellpadding="0">
				<tr>
					<th style="width:40px;text-align: left;">C�digo</th>
					<th style="width:165px;text-align: left;">Nome</th>
					<th style="width:135px;text-align: left;">CPF</th>
					<th style="width:155px;text-align: left;">Email</th>
					<th style="width:220px;text-align: left;">Telefone</th>
					<th></th>
				</tr>
<%
    if (list != null) {			
		for(int i=0; i<list.length; i++) {
			Client clientAux = (Client) list[i];
			if(clientAux.getName()!=null){
%>
				<tr>
					<td><%=clientAux.getIdClient()%></td>
					<td><%=clientAux.getName()%></td>
					<td><%=clientAux.getCpf()%></td>
					<td><%=clientAux.getEmail()%></td>
					<td><%=clientAux.getPhone()%></td>
					<td style="text-align:center;">
						<a class="link" href="javascript:detail(<%=clientAux.getIdClient()%>);"><img src="./img/edit.png"></a>
						&nbsp;
						<a class="link" href="javascript:deleteList(<%=clientAux.getIdClient()%>);"><img src="./img/delete.png"></a>
					</td>
				</tr>
<%
		}
			}
	}
%>
			</table>
	</form>
</body>
</html>