$(document).ready(function(){
    alert($('#usertype').html());
    //$('body #user_profile').attr('src','dist/img/user2-160x160.jpg');
    $('#body_header').html("<p class='box-title'>Dashboard</p>");
    $('#body_content').html("<center><p style='font-size:20px'><i class='fa fa-refresh fa-spin'></i></p></center>");
    $('#body_content').append("<center><p style='font-size:20px'>please wait we are initilazeing your data......</p></center>");
});