$(document).ready(function(){
 var total =0;
 $('#'+obj['form_name']+' tr td').on('keyup','input', function(e){
 clean_form_box();
 if($(this).val()){
 if ($.isNumeric($(this).val())) {
 code =$(this).attr('name');
 res = $(this).val();
 if (res.length<=obj['Field_'+code]['input_length']){
 if (parseFloat(res)<=parseFloat(obj['Field_'+code]['limit'])) { 
 adition(); 
 }else{
 warning_box('invalid');
 $(this).val('');
 adition(); 
 }
 }else if((e.keyCode>64 && e.keyCode<91) || (e.keyCode>95 && e.keyCode<106) || (e.keyCode>47 && e.keyCode<58)){
 warning_box('invalid');
 $(this).val('');
 adition(); 
 }
 }else if((e.keyCode>64 && e.keyCode<91) || (e.keyCode>95 && e.keyCode<106) || (e.keyCode>47 && e.keyCode<58)){
 warning_box('invalid');
 $(this).val('');
 adition();
 }
 }else{
 $(this).val('');
 adition(); 
 } 
 });
 
 function adition(){
 total =0;
 for(i=1; i<=obj['Total_Fields']; i++){
 if($.isNumeric($('#data_field_'+i).val())){
 total =total+ parseFloat($('#data_field_'+i).val());
 }
 }
 $('#final').html(total);
 } 
 });