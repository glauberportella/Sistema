<script type='text/javascript'>
	function execute(entityName, newAction) {
		document.getElementById('newAction').value = newAction;
		document.getElementById('entityName').value = entityName;
		document.getElementById('form').submit();
	}
</script>
<link rel="stylesheet" type="text/css" href="./css/style-menu.css">
<form name="form" id="form" action="./dispatcher" method="post" target="main">
	<input type="hidden" name="newAction" id="newAction">
	<input type="hidden" name="entityName" id="entityName">
</form>

<div id="cssmenu">
<ul>
   <li class="has-sub"><a href="javascript:execute('Brand','goFind');"><span>Marca</span></a>
   		<ul>
    	   <li class="last"><a href="javascript:execute('Brand','goFind');"><span>Consulta</span></a></li>
           <li class="last"><a href="javascript:execute('Brand','goNew');"><span>Cadastro</span></a></li>
       </ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('Model','goFind');"><span>Modelo</span></a>
   		<ul>
      	   <li class="last"><a href="javascript:execute('Model','goFind');"><span>Consulta</span></a></li>
           <li class="last"><a href="javascript:execute('Model','goNew');"><span>Cadastro</span></a></li>
       	</ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('Vehicle','goFind');"><span>Veículo</span></a>
   		<ul>
       	   <li class="last"><a href="javascript:execute('Vehicle','goFind');"><span>Consulta</span></a></li>
           <li class="last"><a href="javascript:execute('Vehicle','goNew');"><span>Cadastro</span></a></li>
       </ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('Product','goFind');"><span>Produto</span></a>
   		<ul>
       	   <li class="last"><a href="javascript:execute('Product','goFind');"><span>Consulta</span></a></li>
           <li class="last"><a href="javascript:execute('Product','goNew');"><span>Cadastro</span></a></li>
       </ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('OS','goFind');"><span>Ordem de Serviço</span></a>
	<ul>
         <li class="has-sub"><a href="javascript:execute('OS','goFind');"><span>Ordem de Serviço</span></a>
            <ul>
               <li class="last"><a href="javascript:execute('OS','goFind');"><span>Consulta</span></a></li>
               <li class="last"><a href="javascript:execute('OS','goNew');"><span>Cadastro</span></a></li>
           	</ul>
         </li>
         <li class="has-sub"><a href="javascript:execute('SS','goFind');"><span>Solicitação de Serviço</span></a>
            <ul>
    	        <li class="last"><a href="javascript:execute('SS','goFind');"><span>Consulta</span></a></li>
	           	<li class="last"><a href="javascript:execute('SS','goNew');"><span>Cadastro</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('Client','goFind');"><span>Cliente</span></a>
      <ul>
         <li class="has-sub"><a href="javascript:execute('Client','goFind');"><span>Cliente Pessoa Física</span></a>
            <ul>
               <li class="last"><a href="javascript:execute('Client','goFind');"><span>Consulta</span></a></li>
               <li class="last"><a href="javascript:execute('Client','goNew');"><span>Cadastro</span></a></li>
           	</ul>
         </li>
         <li class="has-sub"><a href="javascript:execute('JuridicClient','goFind');"><span>Cliente Pessoa Jurídica</span></a>
            <ul>
    	        <li class="last"><a href="javascript:execute('JuridicClient','goFind');"><span>Consulta</span></a></li>
	           	<li class="last"><a href="javascript:execute('JuridicClient','goNew');"><span>Cadastro</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li class="has-sub"><a href="javascript:execute('Supplier','goFind');"><span>Fornecedor</span></a>
   		<ul>
        	   <li class="last"><a href="javascript:execute('Supplier','goFind');"><span>Consulta</span></a></li>
               <li class="last"><a href="javascript:execute('Supplier','goNew');"><span>Cadastro</span></a></li>
       </ul>
   </li>
</ul>
</div>