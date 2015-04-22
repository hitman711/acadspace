<?php
class querys {
    public function load_tables(){
        $load_data = "SELECT `form_id`, `form_field`, `form_title` FROM `form_field`";
        return $load_data;
    }

}

?>