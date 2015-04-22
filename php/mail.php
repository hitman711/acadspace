<?php
class mails {
        function activationmail($username,$email,$activationkey){
        $localhost = '59.182.183.144';
        $to =$email;
        $subject ="Account Activation";
        $msg ="
        <html>
        <head>
        <title>Acadspace Account Activation</title>
        </head>
        <body>
        <h2>Welcome, $username</h2>
        <p>Thank you for registring at the Acadspace.com .
        Before we can activate your account one last step must be taken to complete your registration.</p>
        <p>Please note - you must complete this last step to become a registered member. You will only need to visit this URL once to activate your account.</p>
        <p>To complete your registration, please
        <a href='http://$localhost/activation.php?user=$username&act=$activationkey'>Click Here.</a></p>
        <p>**** Does The Above URL Not Work? ****</p>
        <p>If the above URL does not work, please use your Web browser to go to:</p>
        <p>http://$localhost/acadspace/activation.php?user=$username&act=$activationkey</p>
        </body>
        </html>";
        
        if(mail($to,$subject,$msg)){
                return '1';       
        }
    }
}




?>
