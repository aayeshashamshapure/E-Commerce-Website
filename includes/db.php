<?php
if(session_status()===PHP_SESSION_NONE) session_start();
mysqli_report(MYSQLI_REPORT_ERROR|MYSQLI_REPORT_STRICT);
require_once __DIR__.'/config.php';
try{$conn=new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);$conn->set_charset('utf8mb4');}
catch(Throwable $e){http_response_code(500);exit('Database connection failed. Import database/ecommerce_db.sql and check includes/config.php.');}
