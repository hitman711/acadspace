$(document).ready( function(){
		addition();
       $('#'+obj['form_name']+' tr td').on('keyup','input', function(e){
           
           code =$(this).attr('name');
           credit =parseFloat($('#Fld_Credit_Course_'+code).text());
           if($(this).val()){
               res = ($(this).val()).toUpperCase();                          
               if (res.length<=obj['Field_'+code]['input_length']){
                   var function_type = obj['Field_'+code]['input_type'];
                   if (eval(function_type+'(\"'+res+'\",\"'+obj['Field_'+code]['limit']+'\")')) { 
                       addition();
                   }else if((e.keyCode>64 && e.keyCode<91) || (e.keyCode>95 && e.keyCode<106) || (e.keyCode>47 && e.keyCode<58)){
                       warning('invalid');
                       $(this).val('');
					   addition();
                   }
               }else{
				   warning('length');
                   $(this).val('');
				   addition();
               }
           }else{
               addition();
           }
       });
	   
	function addition(){
		var total_cgpa =0;
        var total_credit = 0;
        var grade_point = 0;
        var sum_of_cg = 0;
		grade_point_arr = {'O':10, 'A':9, 'B':8, 'C':7, 'D':6, 'E':5, 'P':4};
		total_length = $('#'+obj['form_name']+' input').length;
		for(i=1; i<=total_length; i++){
			if($('#data_field_'+i).val()){
				res = $('#data_field_'+i).val().toUpperCase();
				credit = parseFloat($('#Fld_Credit_Course_'+i).text());
				if(res in grade_point_arr){
					grade_point = grade_point_arr[res];
					sum_of_cg = grade_point*credit;
					$('#Fld_Grade_Point_'+i).html(grade_point);
                    $('#Fld_Sum_of_CG_'+i).html(sum_of_cg);
				}	
			}else{
				grade_point =0;
				sum_of_cg =0;
				$('#Fld_Grade_Point_'+i).html(grade_point);
                $('#Fld_Sum_of_CG_'+i).html(sum_of_cg);
			}
			
			total_cgpa += parseFloat($('#Fld_Sum_of_CG_'+i).text());
			total_credit += parseFloat($('#Fld_Credit_Course_'+i).text());
		}
		cgpa = (total_cgpa/total_credit).toFixed(2);
		$('#final').html(cgpa);
	}
	   
});