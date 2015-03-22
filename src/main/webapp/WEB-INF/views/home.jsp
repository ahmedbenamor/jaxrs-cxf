<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	
	<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css">
	<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/default.css">

<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<title>Test Jax-rs cxf</title>
</head>
<body>
<input type="hidden" id="contextPath"  value="${pageContext.request.contextPath}"/>
 <div class="container">
     <div class="jumbotron">
    
<div class="panel panel-success">
      <div class="panel-heading">
        <h3 id="panel-title" class="panel-title">Calculer avec jax-rs cxf<a class="anchorjs-link" href="#panel-title"><span class="anchorjs-icon"></span></a></h3>
      </div>
      <div class="panel-body">
       <div class="form-inline registrationForm">
       <div class="form-group">
		<label for="name" class="col-sm-2 control-label">X</label>
		<div class="col-sm-10">
			<input path="name" type="text" class="form-control" id="num1"
				placeholder="Entier" name="num1" />
				
		</div>
	</div>
	
	 <div class="form-group">
		<label for="name" class="col-sm-2 control-label">(+,-,*)</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="op"
				placeholder="(+,-,*)" name="op" />
				
		</div>
	</div>
	
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Y</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="num2"
				placeholder="Entier" name="num2" />
				
		</div>
	</div>
		<br/><br/>
		<center>
			<input type="button" onclick="calculer();" value="result" class="btn btn-sm btn-primary" />
		<div class="form-group">
		
		<div class="col-sm-10">
			<input disabled="disabled"  type="text" class="form-control" id="result"
				placeholder="result" name="result" />
				
		</div>
	</div>
	</center>
       </div>
      </div>
    </div>
    <center><P>  &copy; Ahmed benamor </P></center>

</div>
</div>
</body>
</html>
<script type="text/javascript">

function calculer(){
	console.log('calcler');
	var num1 = $('#num1').val();
	var num2 = $('#num2').val();

	var op = $('#op').val();
	var url = $('#contextPath').val()+'/jaxrs/res/calculer/'+num1+'/'+num2+'/'+op+'';
	if(request){
		request.abort();
	}
	var request = $.ajax({
		url : url,
		type : 'GET',
		success: function (data, status, xhr) {
			console.log('success'+data);
			$('#result').val(data);
		},
		error:function(info){
			console.log('error '+info);
		}
		
	})
}

</script>
