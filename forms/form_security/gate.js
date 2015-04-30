$(document).ready(function(){
 $('#'+obj['form_name']+' tr td').on('keyup','input', function(e){
 clean_form_box();
 if($(this).val()){
 if ($.isNumeric($(this).val())) {
 code =$(this).attr('name');
 res = $(this).val();
 if (res.length<=obj['Field_'+code]['input_length']){
 if (parseFloat(res)<parseFloat(obj['Field_'+code]['limit'])) { 
 }else{
 warning_box('invalid');
 $(this).val('');
 }
 }else if((e.keyCode>64 && e.keyCode<91) || (e.keyCode>95 && e.keyCode<106) || (e.keyCode>47 && e.keyCode<58)){
 warning_box('invalid');
 $(this).val('');
 }
 }else{
 warning_box('invalid');
 $(this).val('');
 }
 }else{
 warning_box('invalid');
 $(this).val('');
 } 
 });
 });