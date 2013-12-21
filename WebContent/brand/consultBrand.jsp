<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="br.edu.udc.sistemas.ia6.emanuelvictor.entity.Brand"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="./css/style-menu-usecase.css">
<title>Consultar Marca</title>
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
	Brand brandFilter = (Brand) request.getSession().getAttribute(
			"filterBrand");
	if (brandFilter == null) {
		brandFilter = new Brand();
	}
	Object list[] = (Object[]) request.getAttribute("list");
%>
</head>
<body>
	<div id="title">Consultar Marca</div>
	<form name="frm" id="frm" method="post" action="./dispatcher">
		<input type="hidden" name="newAction" id="newAction" /> <input
			type="hidden" name="entityName" id="entityName" value="Brand" /> <input
			type="hidden" name="id" id="id" />
		<div class="label">Descrição:</div>
		<input class="field" type="text" name="description" id="description"
			maxlength="100"
			value="<%=(brandFilter.getDescription() != null) ? brandFilter
					.getDescription() : ""%>" />
		<br />
		<div id="menu" align="left">
			<ul>
				<li><a href="javascript:find();">Consultar</a></li>
				<li><a href="javascript:goNew();">Cadastrar</a></li>
				<li><a href="javascript:clean();">Limpar</a></li>
			</ul>
		</div>
		<table id="table" cellspacing="0" cellpadding="0">
			<tr>
				<th>Código</th>
				<th style="width: 660px; text-align: left;">Descrição</th>
				<th></th>
			</tr>
			<%
				if (list != null) {
					for (int i = 0; i < list.length; i++) {
						Brand brandAux = (Brand) list[i];
			%>
			<tr>
				<td><%=brandAux.getIdBrand()%></td>
				<td><%=brandAux.getDescription()%></td>
				<td style="text-align: center;"><a class="link"
					href="javascript:detail(<%=brandAux.getIdBrand()%>);"><img
						src="./img/edit.png"></a> &nbsp; <a class="link"
					href="javascript:deleteList(<%=brandAux.getIdBrand()%>);"><img
						src="./img/delete.png"></a></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</form>
</body>
</html>