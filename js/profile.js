function structure(data) {
    obj = JSON.parse(data);
    var schema ='';
    schema += "<div class='col-md-6'>";
    schema +="<div class='box box-primary box-solid'>";
    schema +="<div class='box-header with-border bg-blue'>";                    
    schema +="<h3 class='box-title'>Educational Detail</h3></div>";                        
    schema += "<div class='box-body' id='education_detail'>";                            
     
    for (var i in obj) {
        schema +="<label>"+i+"</label>";    
        schema +="<input type='text' class='form-control' id="+i+" value="+obj[i]+"><br>";
    }                        
    schema +="</div></div>";                     
    $('#form_data').append(schema);                
    
}


$(document).ready(function(){
    //alert($('#users').attr('name'));
    $.post('php/function.php',{profile_data:$('#users').attr('name')},function(result){
        structure(result);
        });
    });