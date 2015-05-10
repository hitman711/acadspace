function personal_info(data) {
    obj = JSON.parse(data);
    var schema ='';
    schema += "<div class='col-md-6'>";
    schema +="<div class='box box-primary box-solid'>";
    schema +="<div class='box-header with-border bg-blue'>";                    
    schema +="<h3 class='box-title'>Personal Detail</h3></div>";                        
    schema += "<div class='box-body' id='personal_detail'>"; 
    for (var i in obj) {
        schema +="<label>"+i+"</label>";    
        schema +="<input type='text' disabled class='form-control' id="+i+" value="+obj[i]+"><br>";
    }                        
    schema +="</div></div>";                     
    $('#form_data').append(schema);                
}

function form_structure(data) {
    obj = JSON.parse(data);
    for (i=0; i<Object.keys(obj).length; i++) {
        info = JSON.parse(obj[Object.keys(obj)[i]]);
        var schema ='';
        schema += "<div class='col-md-6'>";
        schema +="<div class='box box-primary box-solid'>";
        schema +="<div class='box-header with-border bg-blue'>";                    
        schema +="<h3 class='box-title'>"+Object.keys(obj)[i]+" Educational Detail</h3>";
        schema +="<div class='box-tools pull-right'>";
        schema +="<button class='btn btn-box-tool' id='"+Object.keys(obj)[i]+"'><i class='fa fa-plus'></i></button>";
        schema +="</div></div>";                        
        schema += "<div class='box-body' style='display: none;' id='"+Object.keys(obj)[i]+"_detail' name='"+Object.keys(obj)[i]+"'>";
        if (info !="") {
            
            for(j=0; j<Object.keys(info).length; j++){
               // alert(JSON.stringify(info[Object.keys(info)[j]]));
                schema +="<label id='label_"+j+"'>"+Object.keys(info)[j]+"</label>";
                if (info[Object.keys(info)[j]]['ans']) {
                    schema +="<input type='text' class='form-control' id='data_input_"+[j]+"' list ='"+Object.keys(info)[j]+"' range="+j+" value='"+info[Object.keys(info)[j]]['ans']+"' /><br>";
                }else{
                    schema +="<input type='text' class='form-control' id='data_input_"+[j]+"' list ='"+Object.keys(info)[j]+"' range="+j+" placeholder='"+info[Object.keys(info)[j]]['placeholder']+"' /><br>";    
                }
            }                                                 
        }else{
            
        }
        schema +="<br>";
        schema +="<center><button id='add_data' class='btn btn-primary btn-lg' name="+Object.keys(obj)[i]+">Add Data</button></center>";
        schema +="</div>";
        schema +="</div>";
        $('#form_data').append(schema);
    }
}


$(document).ready(function(){
    $('#form_data').html('<center><i class="fa fa-refresh fa-spin fa-5x"></i></center>');
//set users username    
    username = $('#users').attr('name');

//user registration information
    personal_detail($('#users').attr('name'));
//user educational details    
    education_detail($('#users').attr('name'));

//button collablsable events       
    $('#form_data').on('click','.btn-box-tool', function(){
        $(this).change('<i class="fa fa-plus"></i>');
        changed = $(this).parents().next().attr('id');
        //alert(changed);
        $('#'+changed).slideToggle('slow');
        $(this).html($(this).html() == '<i class="fa fa-minus"></i>' ? '<i class="fa fa-plus"></i>' : '<i class="fa fa-minus"></i>');
    });
    
    $('.content').on('keypress','input', function(){
        parent_name = $(this).parent().attr('name');
        list_name = $(this).attr('list');
        $.post("php/list.php",{list_name:list_name,field_name:parent_name}, function(result){
           //alert(result);
            $(result).insertAfter($('.content'));
        });
    });
    

//Add information in profile
    $('#form_data').on('click','#add_data',function(e){
        new_data = $(this).attr('name')+"_detail";
        parent_name = $(this).parent().attr('name');
        information =[];
        form_name = $(this).attr('name');
        for( i=0; i<$("#"+form_name+"_detail"+" input").length; i++){
            if (!$.isEmptyObject($.trim($("#"+form_name+"_detail"+" #data_input_"+i).val()))) {
                information.push( $("#"+form_name+"_detail"+" #label_"+i).html()+","+ $("#"+form_name+"_detail"+" #data_input_"+i).val());
            }
        }
        
//User user profile
        if(!$.isEmptyObject(information)){
            $.post("php/function.php",{user:username,update_form:form_name,info:JSON.stringify(information)}, function(result){
                    alert(result);
                });
        }else{
            alert("please provide some info");
        }
    });   
    
});

//PERSONAL DETAILS
function personal_detail(username) {
    $.post('php/function.php',{profile_data:username},function(result){
        $('#form_data').html('');
        personal_info(result);
        });
}

//EDUCATIONAL DETAILS
function education_detail(username) {
    $.post('php/function.php',{educational_data:username},function(result){
        form_structure(result);
    });
}


    