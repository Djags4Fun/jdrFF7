<?php function loggedIn(){
        return isset( $_SESSION['loggedin'] );
    }

    function require_login(){
        if( !loggedin() ){
            header( 'Location: /login.php?referrer='.$_SERVER['REQUEST_URI'] );
            exit;
        }
    }
?>