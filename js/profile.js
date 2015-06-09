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

function form_structure(form_data,user_data) {
    user_info = JSON.parse(user_data);
    obj = JSON.parse(form_data);
    
    for (i=0; i<Object.keys(obj).length; i++) {
        user_data =JSON.parse(user_info[Object.keys(obj)[i]]);
        
        //alert(Object.keys(obj)[i]);
        info = obj[Object.keys(obj)[i]];
        var schema ='';
        schema += "<div class='col-md-6'>";
        schema +="<div class='box box-primary box-solid'>";
        schema +="<div class='box-header with-border bg-blue'>";                    
        schema +="<h3 class='box-title'>"+Object.keys(obj)[i]+" Educational Detail</h3>";
        schema +="<div class='box-tools pull-right'>";
        schema +="<button class='btn btn-box-tool' id='"+Object.keys(obj)[i]+"'><i class='fa fa-plus'></i></button>";
        schema +="</div></div>";                        
        schema += "<div class='box-body' style='display: none;' id='"+Object.keys(obj)[i]+"_detail' name='"+Object.keys(obj)[i]+"'>";
        schema +="<div id='info_box'></div>";
        if (info !="") {
            for(j=0; j<Object.keys(info).length; j++){
                schema +="<label id='label_"+j+"'>"+Object.keys(info)[j]+"</label>";
                
                if (user_data !=null) {
                    //alert("i am inside"+user_data);
                    schema +="<input type='text' class='form-control' id='data_input_"+[j]+"' list ='"+Object.keys(info)[j]+"' range="+j+" placeholder='"+info[Object.keys(info)[j]]['placeholder']+"' value='"+user_data[Object.keys(info)[j].toLowerCase()] +"' /><br>";
                }else{
                    //alert("i am outside"+user_data);
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
            console.log(result);   
           $(result).insertAfter($('.content'));
        });
    });
    

//Add information in profile
    $('#form_data').on('click','#add_data',function(e){
        add_info = $(this).parent().parent().attr('id');
        new_data = $(this).attr('name')+"_detail";
        parent_name = $(this).attr('name');
        information =[];
        form_name = $(this).attr('name');
        for( i=0; i<$("#"+form_name+"_detail"+" input").length; i++){
            if (!$.isEmptyObject($.trim($("#"+form_name+"_detail"+" #data_input_"+i).val()))) {
                information.push('{"'+$("#"+form_name+"_detail"+" #label_"+i).html()+'":"'+ $("#"+form_name+"_detail"+" #data_input_"+i).val()+'"}');
            }
        }
        if(!$.isEmptyObject(information)){
            $.post("php/function.php",{user:username,update_form:parent_name,info:JSON.stringify(information)}, function(result){
                    console.log(result);
                    if (result== "success") {
                        success_box(add_info,result);
                    }else{
                        warning_box(add_info,result);
                    }
                    //alert($("#"+msg+" #info_box").html(result));
                    //console.log(result);
                    //$('#'++" #info_box").html(result);
                    //alert(result);
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
        obj = JSON.parse(result);
        form_data = JSON.parse(obj['form_data']);
        user_data = obj['user_data'];
        object_list =Object.keys(form_data);
        for (i=0; i<object_list.length; i++) {
            form_data[object_list[i]] = form_data[object_list[i]].substr(1);
            $.getJSON(form_data[object_list[i]], function(information){
                //alert(Object.keys(form_data));
                form_structure(JSON.stringify(information),user_data);
                //alert(JSON.stringify(information));
                
            });
        }
        //form_structure(result);
    });
}

function success_box(location,msg) {
    $('#'+location+' #info_box').slideUp('slow');
    $('#'+location+' #info_box').html('<p style="font-size:20px" class="pager"><i class="fa fa-check-circle"></i>  '+msg+'</p>');
    $('#'+location+' #info_box').slideDown('slow');
    $('#'+location+' #info_box').delay(2000).slideUp('slow');
    //setInterval($('#'+location+' #info_box').slideUp('slow'),10000);
}

///Respose failure
function warning_box(location,msg) {
    $('#'+location+' #info_box').slideUp('slow');
    $('#'+location+' #info_box').html('<p style="font-size:20px" class="pager"><i class="fa fa-times-circle"></i>  '+msg+'</p>');
    $('#'+location+' #info_box').slideDown('slow');
    $('#'+location+' #info_box').delay(2000).slideUp('slow');
    //setInterval($('#'+location+' #info_box').slideUp('slow'),10000);
}
    