$(document).ready( function(){
 total_length = $('#'+obj['form_name']+' input').length;
 var total_marks =0;
 var cgpa = 0;
 grade_point_arr = {'A1':10,'A2':9,'B1':8,'B2':7,'C1':6,'C2':5,'D':4,'E1':0,'E2':0};

 $('#'+obj['form_name']+' tr td').on('keyup','input', function(e){
    var total_credit = 0;
    var grade_point = 0;
    total_marks = 0;
    code =$(this).attr('name');
    if($(this).val()){
    res = ($(this).val()).toUpperCase(); 
    if (res.length<=obj['Field_'+code]['input_length']){
    var function_type = obj['Field_'+code]['input_type'];
    if (eval(function_type+'("'+res+'","'+obj['Field_'+code]['limit']+'")')) { 
        addition();
 }
 else if((res.length>obj['Field_'+code]['input_length']) && (e.keyCode>64 && e.keyCode<91) || (e.keyCode>95 && e.keyCode<106) || (e.keyCode>47 && e.keyCode<58)){
        warning('invalid');
        $(this).val('');
        addition();
        }
    }
    else{
        $('#Fld_Grade_Point_'+code).html(grade_point);
        $('#final').html(cgpa);
        warning('length');
        $(this).val('');
        addition();
    }
 }else{
    $('#Fld_Grade_Point_'+code).html(grade_point);
    addition();
    }
    });
 });

function addition() {
    total_length = $('#'+obj['form_name']+' input').length;
    var total_marks =0;
    var cgpa = 0;
    grade_point_arr = {'A1':10,'A2':9,'B1':8,'B2':7,'C1':6,'C2':5,'D':4,'E1':0,'E2':0};
    
    
    for(i=1; i<=total_length; i++){
        if($('#data_field_'+i).val()){ 
            res = ($('#data_field_'+i).val()).toUpperCase();
            if(res in grade_point_arr){
               grade_point = grade_point_arr[res];
               $('#Fld_Grade_Point_'+i).html(grade_point);
               total_marks +=parseFloat($('#Fld_Grade_Point_'+i).text());
               cgpa = (total_marks/total_length).toFixed(2);
            }
        }
    }
    $('#'+obj['form_name']+' #final').html(cgpa);
}
 