$('document').ready(function(){
    $.getJSON('./forms/data/aboutUs/aboutUs.json', function(result){
        //alert(Object.keys(result).length);
        font_awsome = ["fa-facebook-square","fa-google-plus-square","fa-linkedin-square","fa-twitter-square"];
        for (i=1; i<=Object.keys(result).length; i++) {
            //alert(Object.keys(result[i]));
            schema ='';
            schema +="<div class='col-md-3' id='mem_div'>";
            schema +="<div id='member_img'>";
            schema +="<img src='"+result[i]['Image']+"'>";
            schema +="</div>";
            schema +="<div id='member_info'>";
            schema +="<p id='member_name'>"+result[i]['Name']+"</p>";
            schema +="<p id='member_designation'>"+result[i]['Designation']+"</p>";
            schema +="<div id='member_social_net'><p>";
            social_name =Object.keys(result[i]['Social_link']);
            for (j=0; j<Object.keys(result[i]['Social_link']).length; j++) {
                if (result[i]['Social_link'][social_name[j]]) {
                    schema +="<span><a id='"+social_name[j]+"' href='"+result[i]['Social_link'][social_name[j]]+"'><i class='fa "+font_awsome[j]+"'></i></a></span>";
                }
            }
            schema +="</p></div>";
            schema +="<p id='about_member'>"+result[i]['Description']+"</p>";
            schema +="</div></div>";
            
            $('#member').append(schema);
            //alert(Object.keys(result[i]['Social_link']).length);
            //alert(schema);
        }
        });
    });

/*
                                        
                                            
                                            
                                            <li><i class="fa "></i></li>
                                            <li><i class="fa "></i></li>
*/