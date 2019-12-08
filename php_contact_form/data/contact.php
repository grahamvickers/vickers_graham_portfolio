<?php
    if(empty($_POST)){
        echo 'No thanks thats spam bud';
        exit;
    }
    $name = '';
    $email = '';
    $subject = '';
    $message = '';
    $recipient = 'vickgrah@gmail.com';

    // some validation
    if(isset($_POST['name'])){
        $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    }

    if(isset($_POST['email'])){
        $email = str_replace(array("\r", "\n", "%0a", "%0d"), '',$_POST['email']);
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    }

    if(isset($_POST['subject'])){
        $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
    }

    if(isset($_POST['message'])){
        $message = $_POST['message'];
    }
    
    $headers = [
        'From' => 'noreply@test.ca',
        'Reply-To' =>$name.'<'.$emal.'>'
    ];

    if(mail($recipient, $subject, $message, $headers)){
        echo'
            <head>
                <link rel="stylesheet" href="../css/main.css">
            </head>
            <nav>
                <img src="../images/logo_gvd.svg" alt="GVD Logo" id="logo">
                <div class="hamburger">
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>
                <ul class="nav-links">
                    <li><a href="../index.php">HOME</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
            <div class="formMessage">
                <p>Thank you for contacting me, '.$name.'. I will get back to you ASAP!</p>
                <img src="../images/sent.svg" alt="success image" class="formImg">
            </div>
            <footer>
                <div id="social">
                    <a href="https://www.instagram.com/gvixpix/" ><img src="../images/instagram.svg" alt="Instagram" class="socialIcon"></a>
                    <a href="https://www.linkedin.com/in/grahamvickers/"><img src="../images/linkedin.svg" alt="LinkedIn" class="socialIcon"></a>
                    <a href="https://github.com/grahamvickers"><img src="../images/github.svg" alt="Github" class="socialIcon"></a>
                </div>
                <div>
                    <p>© 2019 Graham Vickers</p>
                </div>
            </footer>';
    }
    else{
        echo '
            <head>
                <link rel="stylesheet" href="../css/main.css">
            </head>
            <nav>
                <img src="../images/logo_gvd.svg" alt="GVD Logo" id="logo">
                <div class="hamburger">
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>
                <ul class="nav-links">
                    <li><a href="../index.php">HOME</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
            <div class="formMessage">
                <p>We are sorry but the email did not go through, please try again!<p>
                <img src="../images/sent.svg" alt="success image" class="formImg">
            </div>
            <footer>
                <div id="social">
                    <a href="https://www.instagram.com/gvixpix/" ><img src="../images/instagram.svg" alt="Instagram" class="socialIcon"></a>
                    <a href="https://www.linkedin.com/in/grahamvickers/"><img src="../images/linkedin.svg" alt="LinkedIn" class="socialIcon"></a>
                    <a href="https://github.com/grahamvickers"><img src="../images/github.svg" alt="Github" class="socialIcon"></a>
                </div>
                <div>
                    <p>© 2019 Graham Vickers</p>
                </div>
            </footer>';
    }
?>