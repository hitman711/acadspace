/*----------------------------------------------selection box structure-------------------------------------*/
function selection_box(result,table_id) {
    var obj = JSON.parse(result);
    //alert(obj.length);
    $('#'+table_id).append("<option val='select'>Select</option>");
    for (var i =0; i<obj.length; i++) {
        var add ="<option value="+obj[i]['level_code']+"-"+obj[i]['next_level']+"-"+obj[i]['next_table']+">"+obj[i]['level_data']+"</option>";
        $('#'+table_id).append(add);
    }
}


//saved acad record layout
function old_simple_record(data) {
    $('#level1').html(' ');
    var pass ='';
    list =[];
    for( i=0; i<data.length; i++){
        if (!$.isEmptyObject(list)) {
            if (list.indexOf(data[i][0]) != -1) {
                
            }else{
                list.push(data[i][0]);
                pass +='<div><div class="col-md-3" id="'+data[i][0]+'"><div class="box-header with-border bg-blue">'+
                    '<h3 class="box-title">'+data[i][0]+'</h3>'+
                    '<div class="box-tools pull-right">'+
                    '<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>'+
                    '</div></div>';
                    pass +='<div class="box-header with-body" id="body_'+data[i][0]+'">';
                    pass +='</div></div></div>';
            }
        }else{
                list.push(data[i][0]);
                pass +='<div><div class="col-md-3" id="'+data[i][0]+'"><div class="box-header with-border bg-blue" >'+
                    '<h3 class="box-title">'+data[i][0]+'</h3>'+
                    '<div class="box-tools pull-right">'+
                    '<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>'+
                    '</div></div>';
                    pass +='<div class="box-header with-body" id="body_'+data[i][0]+'">';
                    pass +='</div></div></div>';
            }
    }
    $('#level1').append(pass);
    
    for (i=0; i<data.length; i++) {
            $('#'+data[i][0]+" #body_"+data[i][0]).append('<center><p><a id="available" class="0" title="'+data[i][1]+'" name="'+data[i][2]+'">'+data[i][1]+'</a></p></center>');
    }
    
    if (pass) {
        $('#level_1').css('display','block');
    }else{
        $('#level_1').css('display','none');
    }
}

//exitring comp record layout
function old_comp_record(data) {
    $('#level2').html(' ');
    var pass ='';

    list =[];

    for( i=0; i<data.length; i++){
        if (!$.isEmptyObject(list)) {
            if (list.indexOf(data[i][0]) != -1) {
                
            }else{
                list.push(data[i][0]);
                pass +='<div><div class="col-md-3" id="'+data[i][0]+'"><div class="box-header with-border bg-blue">'+
                    '<h3 class="box-title">'+data[i][0]+'</h3>'+
                    '<div class="box-tools pull-right">'+
                    '<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>'+
                    '</div></div>';
                    pass +='<div class="box-header with-body" id="body_'+data[i][0]+'">';
                    pass +='</div></div></div>';
            }
        }else{
                list.push(data[i][0]);
                
                pass +='<div><div class="col-md-3" id="'+data[i][0]+'"><div class="box-header with-border bg-blue">'+
                    '<h3 class="box-title">'+data[i][0]+'</h3>'+
                    '<div class="box-tools pull-right">'+
                    '<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>'+
                    '</div></div>';
                    pass +='<div class="box-header with-body" id="body_'+data[i][0]+'">';
                    pass +='</div></div></div>';
            }
    }
    $('#level2').append(pass);
    for (i=0; i<data.length; i++) {
            $('#'+data[i][0]+" #body_"+data[i][0]).append('<center><p><a id="available" class="'+data[i][4]+'" title="'+data[i][1]+'" name='+data[i][2]+'>'+data[i][1]+'    Attempt:'+data[i][4]+'</a></p></center>');
    }
    
    if (pass) {
        $('#level_2').css('display','block');
    }else{
        $('#level_2').css('display','none');
    }
}

//already fill form struct
function get_filled_form_struct(form_name,form_data, javascript , form_no,user_data,attempt) {
    obj = JSON.parse(form_data);
    data = JSON.parse(user_data);
    $('#selected .box-title').html('<span>'+form_name+'</span>');
    var schema = "<table class='table' id="+obj['form_name']+"><tr>";
    for (i=0; i<Object.keys(obj['header_field']).length; i++) {
        schema +="<th name="+obj['header_field'][i]+">"+obj['header_field'][i]+"</th>";
    }
    schema +="</tr><tr>";
    for (i=1; i<=obj['Total_Fields']; i++) {
        schema +="<tr>";
        var pass = 'Field_'+i;
        for (j=0; j<obj['Field_Parameter']; j++) {
            input_type = ["text","date"];
            if (input_type.indexOf(obj[pass][obj['field_name'][j]]) != -1) {
                schema +="<td><input class='form-control my-colorpicker1 colorpicker-element pull-right' id='data_field_"+i+"' type ="+obj[pass][obj['field_name'][j]]+" name='"+i+"'  value='"+data['data_field_'+i]+"'  /></td>";
            }else{
                schema +="<td><label id='Fld_"+obj["field_name"][j]+"_"+i+"'>"+obj[pass][obj['field_name'][j]]+"</label></td>";    
            }
        }
        if (i==obj['Total_Fields']) {
            schema +="</tr><tr><td  colspan ="+obj['Field_Parameter']+" style='text-align:center;'><span style='font-size:25px'>"+obj["field_name"][obj['Field_Parameter']]+"</span><br><span style='font-size:35px' id='final'>"+data['total']+"</span></td>";
        } 
        schema +="</tr>";
    }
    schema += "</table>";
    schema += "</table><center><button id='update_data' name='"+form_no+"' title='"+attempt+"' class='btn btn-primary btn-lg'>Update Data</button>&nbsp;";
    schema += "<button id='delete_data' title='"+attempt+"' name='"+form_no+"'class='btn btn-primary btn-lg'>Delete Data</button></center>";
    schema +="<span style='text-align:right'>To view Analytics click <a href='analytics.php'> Here</a></span>";
    $('#form_box').append(schema);
    $('#form_box').append("<script>"+javascript+"</\script>");
}



//form structure
function structure(data,javascript,form_no) {
        obj = JSON.parse(data);
        var schema = "<table class='table' id="+obj['form_name']+"><tr>";
        for (i=0; i<Object.keys(obj['header_field']).length; i++) {
            schema +="<th name="+obj['header_field'][i]+">"+obj['header_field'][i]+"</th>";
        }
        schema +="</tr><tr>";
        for (i=1; i<=obj['Total_Fields']; i++) {
            schema +="<tr>";
            var pass = 'Field_'+i;
            for (j=0; j<obj['Field_Parameter']; j++) {
                input_type = ["text","date"];
                if (input_type.indexOf(obj[pass][obj['field_name'][j]]) != -1) {
                    schema +="<td><input   class='form-control my-colorpicker1 colorpicker-element pull-right' id='data_field_"+i+"' type ="+obj[pass][obj['field_name'][j]]+" name='"+i+"'/></td>";
                }else{
                    schema +="<td><label id='Fld_"+obj["field_name"][j]+"_"+i+"'>"+obj[pass][obj['field_name'][j]]+"</label></td>";    
                }
            }
            if (i==obj['Total_Fields']) {
                schema +="</tr><tr><td  colspan ="+obj['Field_Parameter']+" style='text-align:center;'><span style='font-size:25px'>"+obj["field_name"][obj['Field_Parameter']]+"</span><br><span style='font-size:35px' id='final'>0</span></td>";
            }
            schema +="</tr>";
        }
        schema += "</table>";
        schema +="<center><button id='add_data' name='"+form_no+"' class='btn btn-primary btn-lg'>Add Data</button></center>";
        $('#form_box').append(schema);
        $('#form_box').append("<script>"+javascript+"</\script>");
    }  


/*------------------------------------------------javascript event starts from here -------------------------------------------------------------------------------*/

//on document ready load old user data and new fields
$(document).ready( function(){
    $('#display_form').css('display','none');
//if user not set 
    if (!$('#users').text()) {
        location.replace('index.php');
    }  
//get users old record event
    else{
        saved_record($('#users').attr('name'));    
    }
//selection box    
    for (var i=0; i<5; i++) {
        $('#selection_box').append('<select style="font-size:18px; margin:10px 10px;" class="col-md-3" id='+i+'></select>');
    }
    
    $('select').css('display','none');
    var level1 ='';
    var level2 ='';
    var level3 ='';
    var level4 ='';
    
    
//Initial selection box(LEVEL 1)
    $.post('php/examtype.php',{level_1_selection_box:'level0'}, function(result){
        $('#display_form').css('display','none');
        selection_box(result,"0");
        $('#0').css('display','inline');
    });
   
//next level selection boxes
    $('#selection_box').on('change','select', function(){
        clean_form_box();
        $('#display_form').css('display','none');
        $('#selected .box-title').html('');
        $('#form_box').html('');
        if ($(this).val()=='Select') {
            alert("please select course");
        }else{
            var get_id = parseInt($(this).attr('id'));
            var value = $(this).val();
            $('#selection_box #selected').append('<i class="fa fa-refresh fa-spin"></i>');
            $.post('php/examtype.php',{next_level_info:value}, function(result){
                //alert(result);
                if (result=="form") {
                    $('#display_form').css('display','block');
                    //form title bar
                    for (var i=0; i<=get_id; i++) {
                        $('#selected .box-title').append("<span style='text-transform: capitalize;' id='level"+i+"'>  "+$('#'+i+' :selected').text()+" <i class='fa fa-angle-right'></i></span>");
                    }  
                    get_id = get_id-1;
                    
                    $.post('php/examtype.php',{get_form_to_display:value,user_name:$('#users').attr('name')}, function(form_field){
                        //form already filled
                            if (form_field =="filled") {
                                var pass = value.split('-');
                                var form_no =pass[0];
                                
                                $.post('php/examtype.php',{user_name:$('#users').attr('name'), saved_form_no:form_no,Attempt:'0'},function(result){
                                if (result !="failure") {
                                    var obj = JSON.parse(result);
                                    $('#form_box').append(get_filled_form_struct(obj['title'],obj['form_field'],obj['security'],form_no,obj['user_data'],obj['attempt_no']));
                                }else{
                                    alert("failure");
                                }
                                });
                                
                            }
                            else{
                                $('#form_box').html(' ');
                                var obj = JSON.parse(form_field);
                                structure(obj['form_field'],obj['security'],obj['form_no']);
                            }    
                        });
                        
                }else{
                    get_id = get_id+1;
                    selection_box(result,get_id);
                    $('#'+get_id).css('display','inline');
                }
                });
        }
        var i =get_id+1;
        for (i; i<=5; i++) {
            $('#'+i).css('display','none');
            $('#'+i).html('');
        }
    });
   
//insert user data event
    $('#form_box').on('click','#add_data', function(){
    clean_form_box();
    if ($.trim($('#form_box table tr td input').val())) {
        $(this).attr('disabled','true');
        $(this).html("<i class='fa fa-circle-o-notch fa-spin'></i><span>processing.......</span>");
        var field_name ="";
        var field_value ='';
        data_field =[];
        for (var i=1; i<=$('#form_box table tr td input').length; i++){
            data_field.push($('#data_field_'+i).val());
        }
        total = $('#final').text();
        if (!total) {total = '0';}
        $('#form_box').append("<div class='overlay'><i class='fa fa-refresh fa-spin'></i></div>");
        text = {user_name:$('#users').attr('name'), form:$(this).attr('name')};
        $.post('php/examtype.php',{insert_data:text, insert_marks:data_field, total:total},function(result){

                if (result == "success") {
                    success_box("data Added Successfully");
                    $('#form_box .overlay').remove();
                    $('#add_data').html("Data Added Successfully");
                }else{
                    $('#form_box .overlay').remove();
                    warning_box("Something wrong");
					$(this).removeAttr('disabled');
                    $('#add_data').html("Add Data again");
                }

            });
    }else{
        warning_box("please fill all requierd field");
    }
    });
 
//open saved record event    
    $('#level1, #level2').on('click','#available', function(){
        clean_form_box();
        $('#display_form').css('display','block');
        $('#display_form #form_box').html(' ');
        attempt = $(this).attr('class');
        if (!attempt) {
            attempt = 0;
        }
        var user =$('#users').attr('name');
        var form_no = $(this).attr('name');
        var form_name =$(this).attr('title');
        $.post('php/examtype.php',{user_name:$('#users').attr('name'), saved_form_no:$(this).attr('name'),Attempt:attempt},function(result){
            var obj = JSON.parse(result);
            if (result !="failure") {
                $('#form_box').html(' ');
                var obj = JSON.parse(result);
                $('#form_box').append(get_filled_form_struct(                               
                obj['title'],obj['form_field'],obj['security'],form_no,obj['user_data'],obj['attempt_no']));
            }else{
                alert("failure");
            }
            });
        });

//update user data event    
    $('#form_box').on('click', '#update_data', function(){
        clean_form_box();
        if (!$.trim($('#form_box table tr td input').val())){
            alert("please field all requierd field");
        }else{
            var data_field =[];
            var attempt = $(this).attr('title');
            for (var i=1; i<=$('#form_box table tr td input').length; i++){
                data_field.push($('#data_field_'+i).val());
            }
            text = {user_name:$('#users').attr('name'), form_no:$(this).attr('name')};
            total = $('#final').text();
            if (!total) {total = '0';}
            $.post('php/examtype.php',{update_user_data:text, data:data_field,total:total,Attempt:attempt},function(result){

                if (result == "success") {
                        success_box("data Updated Successfully");
                        ('#form_box .overlay').remove();   
                    }
                    else{
                        $('#form_box .overlay').remove();
                        warning_box("Data not updated please check your input data");
			$(this).removeAttr('disabled');
                        $('#add_data').html("Add Data again");
                    }
                });
        }
        });
  
//delete user data event
    $('#level1, #level2, #display_form').on('click','#delete_data', function(){
        var attempt = $(this).attr('title');
        $('#display_form').css('display','block');
        $.post('php/examtype.php',{user_name:$('#users').attr('name'),delete_user_form:$(this).attr('name'),Attempt:attempt},function(result){
            if(result =='success'){
                success_box("User Data Deleted");
		$('#display_form #form_box').html(' ');
                saved_record($('#users').attr('name'));
            }else{
                warning_box("Data not deleted Please try again");
            }
            });
        
        $.post('php/examtype.php',{saved_user_name:$('#users').attr('name')},function(result){
                var obj = JSON.parse(result);
                old_simple_record(obj['simple']);
                old_comp_record(obj['comp']);
            });
        });
    
    
    $('#level1, #level2').on('click','.btn-box-tool', function(){
        $(this).change('<i class="fa fa-plus"></i>');
        changed = $(this).parents().next().attr('id');
        //alert(changed);
        $('#'+changed).slideToggle('slow');
        $(this).html($(this).html() == '<i class="fa fa-minus"></i>' ? '<i class="fa fa-plus"></i>' : '<i class="fa fa-minus"></i>');
    });
    
    
    
    
    
});


function saved_record(user_name) {
    $.post('php/examtype.php',{saved_user_name:user_name},function(result){
            if (result) {
                //alert(result);
                var obj = JSON.parse(result);
                old_simple_record(obj['simple']);
                old_comp_record(obj['comp']);
            }
        });
}


//CLEAR form Box
function clean_form_box() {
    $('#display_form #success').slideUp('slow');
    $('#display_form #success').html(' ');
    $('#display_form #warning').slideUp('slow');
    $('#display_form #warning').html(' ');
}

//Respose Success
function success_box(msg) {
    $('#display_form #success').slideUp('slow');
    $('#display_form #success').html('<p style="font-size:20px" class="pager"><i class="fa fa-check-circle"></i>  '+msg+'</p>');
    $('#display_form #success').slideDown('slow');
}

///Respose failure
function warning_box(msg) {
    $('#display_form #warning').slideUp('slow');
    $('#display_form #warning').html('<p style="font-size:20px" class="pager"><i class="fa fa-times-circle"></i>  '+msg+'</p>');
    $('#display_form #warning').slideDown('slow');
}


//processing operation
function processing(location_id) {
    $('#'+location_id).html('<center><i class="fa fa-circle-o-notch fa-spin"></i></center>');
}

//warning to user for invalide input 
function warning(warning_type) {
    var warning = {'length':"invalid length",'invalid':"invalid input"};
    if (warning_type in warning) {
        warning_box(warning[warning_type]);
    }else{
        $('#display_form #warning').slideUp('slow');
    }
}


/*--------------------------------------------Types of user data ---------------------------------------*/
function number(input_value,limit) {
            $('#display_form #warning').slideUp('slow');
            if (!isNaN(input_value)) {
                if (parseInt(input_value)<=parseInt(limit)) {
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        }
        
        
function percentage(input_value, limit) {
    $('#display_form #warning').slideUp('slow');
    if (!isNaN(input_value)) {
        if (input_value<limit) {
            return true;
        }else{
            return false;
        }
    }else{
        return false;
    }
}
        

function Grade(input_value,type_list) {
    $('#display_form #warning').slideUp('slow');
            set_list = type_list.split(',');
            if (set_list.indexOf(input_value.toUpperCase()) != -1) {
                return true;
            }else{
                return false;
            }
        }