function personal_info(data) {
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

function form_structure() {

    var schema ='';
    schema += "<div class='col-md-6'>";
    schema +="<div class='box box-primary box-solid'>";
    schema +="<div class='box-header with-border bg-blue'>";                    
    schema +="<h3 class='box-title'>Educational Detail</h3></div>";                        
    schema += "<div class='box-body' id='education_detail'>";                                 
    schema +="<label>1</label>";    
    schema +="<input type='text' class='form-control' id='1' value='1'><br>";                        
    schema +="</div></div>";                     
    $('#form_data').append(schema);
}



$(document).ready(function(){
    //alert($('#users').attr('name'));
    $('#form_data').html('<center><i class="fa fa-refresh fa-spin fa-5x"></i></center>');
    $.post('php/function.php',{profile_data:$('#users').attr('name')},function(result){
        $('#form_data').html('');
        personal_info(result);
        });
    
    $.post('php/function.php',{educational_data:$('#users').attr('name')},function(result){
        alert(result);
        });
    
    
    
    
    });

/*
    $.post('php/function.php',{educational_data:$('#users').attr('name')},function(result){
        $('#form_data').html('');
        alert(result);
        });
    });
*/