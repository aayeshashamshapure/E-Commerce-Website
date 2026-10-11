<?php
if(session_status()===PHP_SESSION_NONE) session_start();
function e($v){return htmlspecialchars((string)$v,ENT_QUOTES|ENT_SUBSTITUTE,'UTF-8');}
function token(){if(empty($_SESSION['csrf']))$_SESSION['csrf']=bin2hex(random_bytes(32));return $_SESSION['csrf'];}
function verify_token(){if(!hash_equals($_SESSION['csrf']??'',$_POST['csrf']??'')){http_response_code(419);exit('Invalid form token. Refresh and try again.');}}
function flash($m){$_SESSION['flash']=$m;}
function admin_required(){if(empty($_SESSION['admin_id'])){header('Location: login.php');exit;}}
