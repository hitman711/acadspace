$('#register').click( function() {
    if($('#first').val() &&
      $('#last').val() &&
      $('#email').val() &&
      $('#user').val() &&
      $('#pass').val() &&
      $('#retype_pass').val() 
      /*&&
      $('#c_study').val() &&
      $('#c_board').val() &&
      $('#c_name').val() &&
      $('#c_stream').val()
      */
      ){
        if($('#pass').val() == $('#retype_pass').val()){
            $('#response').html('<center><i class="fa fa-refresh fa-spin"></i><center>');
            var fname = $('#first').val();
            var lname = $('#last').val();
            var email = $('#email').val();
            var username = $('#user').val();
            var password = $('#pass').val();
            var repass = $('#retype_pass').val();
//Current educational Detail            
            
            $('#process').css('display','block');
            
            $.post('./php/register.php',{
                first:fname,
                last:lname,
                email:email,
                user:username,
                pass:password,
                rpass:repass
                }, function(result){
                $(this).attr('disabled');
                $('#response').html(result);
                });

        }
        else{
            $('#response').html('Password does not match.');
        }
          
    }else{
        $('#response').html('Please complete all required Fields.');
    }
});


$('input').keypress(function(e){
    if (e.which =='42' ||
      e.which =='32' ||
      e.which =='40' ||
      e.which =='41') {
        
        return false;
    }
    });



$('#user').focusout(function() {
    $('#id_test').html('');
    if ($('#user').val()) {
    var check = $('#user').val();
        $.post('./php/validate.php',{username:check}, function(result){
            if (result =='valid') {
                $('#user').after('<span id="id_test"><i class="fa fa-check"></i>valid Id</span>');
            }else{
                $('#user').after('<span id="id_test"><i class="fa fa-times"></i>Username already used</span>');
                $('#user').val('');
            }
            });
        }
    });

$('#email').focusout(function() {
    $('#email_test').html('');
    if ($('#email').val()) {
    var check = $('#email').val();
        $.post('./php/validate.php',{email:check}, function(result){
            if (result =='valid') {
                $('#email').after('<span id="email_test"><i class="fa fa-check"></i>valid Id</span>');
            }else{
                $('#email').after('<span id="email_test"><i class="fa fa-times"></i>Email id already used</span>');
                $('#email').val('');
            }
            });
        }
    });


$('#user').focusin(function(){
    $('#id_test').html('');
    var check = $(this).attr('id');
        $('#'+check).after('<span id="id_test"><i class="fa fa-spinner fa-spin"></i> checking</span>');
    });

$('#email').focusin(function(){
    $('#email_test').html('');
    var check = $(this).attr('id');
        $('#'+check).after('<span id="email_test"><i class="fa fa-spinner fa-spin"></i> checking</span>');
    });



