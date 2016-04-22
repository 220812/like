$(document).ready(function(){
	$(´#place´).chage(function(event){
		var place = $("select#place").val();
		$.getJSON ('solicitarAjax.do',{
			lugar: place
		}, function(jsonResponse){
			document.forms[0].elements["estado"].value=jsonResponse.estado;
		});
	});
});