function get_form_struct(total_field, field_content, form_no) {
    obj = JSON.parse(field_content);
    var schema = "<table class='table ' id='current_form'>";
    for(var i=1; i<=total_field; i++){
        var pass = 'Field_'+i;
        schema =schema+"<tr class='col-md-6'><td class='col-md-3' id='label_'"+i+"'>"+obj[pass]['Field_Name']+"</td>";
        schema =schema+"<td class='col-md-3'><input type ='"+obj[pass]['Field_Type']+"' id='data_field_"+i+"'/></td></tr>";    
    }
    schema = schema+"</table><br><button id='add_data' class='"+form_no+"'>Add Data</button>";
    return schema;
}



$(document).ready( function(){
    for (var i=0; i<5; i++) {
        $('#selection_box').append('<select style="font-size:16px; margin:10px 10px;" id='+i+'></select>');
    }
    $('select').css('display','none');
    var level1 ='';
    var level2 ='';
    var level3 ='';
    var level4 ='';
    
    $.post('php/examtype.php',{first:'start'}, function(result){
        $('#selection_box').append('<i class="fa fa-refresh fa-spin"></i>');
        $('#selection_box i').remove();
        $('#0').append("<option></option>");
        $('#0').append(result);
        $('#0').css('display','inline');
    });

    $('#selection_box').on('change','select', function(){
        $('.box-title').html('');
        $('#form_box').html('');
        var get_id = parseInt($(this).attr('id'))+1;
        var value = $(this).val();
        $('#selection_box').append('<i class="fa fa-refresh fa-spin"></i>');
        $.post('php/examtype.php',{level:value}, function(result){
            $('#selection_box i').remove();
            if (result =='form') {
                for (var i=0; i<get_id; i++) {
                    $('.box-title').append("<span id='level"+i+"'>"+$('#'+i+' :selected').text()+"  </span><i class='fa fa-chevron-right'></i>");
                }
                $.post('php/examtype.php',{form:value}, function(form_field){
                    $split = form_field.split("-"); 
                    $('#form_box').append(get_form_struct(parseInt($split[0]),$split[1], $split[2]));
                });
                
            }else{
                $('#selection_box i').remove();
                $('#'+get_id).html("");
                $('#'+get_id).append("<option></option>");
                //alert(result);
                $('#'+get_id).append(result);
                $('#'+get_id).css('display','inline');
            }
        });
        //alert(get_id);
        var i =get_id+1;
        for (i; i<=5; i++) {
            $('#'+i).css('display','none');
            $('#'+i).html('');
        }
    });
    
    
    
    $('#form_box').on('click','#add_data', function(){
    if (!$('#form_box table tr td input').val() =="") {
        $(this).attr('disabled','true');
        $(this).html("<i class='fa fa-circle-o-notch fa-spin'></i><span>processing.......</span>");
        var data_fields =[];
        var field_name ="";
        var field_value ='';
        data_field =[];
        for (var i=1; i<=$('#form_box table tr td input').length; i++){
            data_field.push($('#data_field_'+i).val());
        }
        $('#form_box').append("<div class='overlay'><i class='fa fa-refresh fa-spin'></i></div>");
        text = {user_name:$('#users').text(), form:$(this).attr('class')};
        $.post('php/examtype.php',{submit:text, data:data_field},function(result){
                //$('#form_box').html(result);
                //alert(result);
                if (result == "Success") {
                    $('#form_box .overlay').remove();
                    $('#form_box').append("<h1>Done</h1>");
                    $('#add_data').html("Done");
                }else{
                    $('#form_box .overlay').remove();
                    $('#form_box').append("<h1>Something wrong</h1>");
                    $('#add_data').html("Add Data again");
                }
            });
        $(this).attr('disabled','false');
    }else{
        alert("please field all requierd field");
    }
    //alert(text);
    });
    
});

