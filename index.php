<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Email Scanner</title>
    </head>
    <body>
        <?php
        
        mysql_connect('localhost','kamas3_emailsc','bingo45');
        mysql_select_db('kamas3_emailsc');
        
    $user = 'care@satyamhospital.com';
    $pass = 'satnam';
     $imap_server = "{192.254.214.105:143/imap/notls}INBOX";
     
     
    // Connect to the pop3 email inbox belonging to $user
    // If you need SSL remove the novalidate-cert section
    $mbox = imap_open( $imap_server, $user, $pass);
    

    $MC = imap_check($mbox); 

    $sorted_mbox = imap_sort($mbox, SORTDATE, 1);
    $totalrows = imap_num_msg($mbox);
    

    $startvalue = 0;
    while ($startvalue < $totalrows && $startvalue<100) {

        $headers = imap_fetchheader($mbox, $sorted_mbox[ $startvalue ] );
       // echo $headers;
       // echo htmlentities($headers->message_id);
        $subject = array();
        preg_match_all('/^Subject: (.*)/m', $headers, $subject);
      // print $subject[1][0] . "<br />";
 
        $subject = isset($subject[1][0])?$subject[1][0]:(isset($subject[0][0])?$subject[0][0]:'');
        
        if(strpos(strtolower($subject), 'enquiry for you at')!==FALSE){
            
           $msg = imap_fetchbody($mbox, $sorted_mbox[ $startvalue ],2);
           // echo $msg.'</br>';
            
    $msg_array = explode('<tr', $msg);echo count($msg_array)." ";

if(count($msg_array)<5){ $msg_array = explode('<TR', $msg);//echo count($msg_array)." ";

}


if(count($msg_array)<5){ $msg_array = explode('<tr style', $msg);//echo count($msg_array);

} //echo "<br /> ";



//print_r($msg_array);
    
    foreach($msg_array as $part){    // echo $part;
        if(strpos($part, 'Caller Name')!==FALSE){
             
                     $caller_name = trim(str_replace(array('Caller Name',':'),'',strip_tags('<tr '.$part)));
                     $caller_name = mysql_escape_string($caller_name);

        }
        
        if(strpos($part, 'Requirement:')!==FALSE){
                     $caller_requirement = trim(str_replace(array('Caller','Requirement:'),'',strip_tags('<tr '.$part)));
                     $caller_requirement = mysql_escape_string($caller_requirement);
        }
        
        if(strpos($part, 'Phone:')!==FALSE||strpos($part, 'Phone :')!==FALSE){
                       // echo $part.'<br />';
                        $part = explode(',', $part);
                        if(isset($part['1'])){
                         $part_extra = $part['1']; 
                         
                         $caller_phoneextra =filter_var(trim(str_replace(array('Caller','Phone', ':'),'',$part_extra)), FILTER_SANITIZE_NUMBER_INT);
                         $caller_phoneextra = str_replace('+91','',$caller_phoneextra);
                          $caller_phoneextra = mysql_escape_string($caller_phoneextra);
                        }
                        else {
                            $caller_phoneextra = '';
                        }
                        $part = $part['0'];
                        
                        
                         $caller_phone =filter_var(trim(str_replace(array('Caller','Phone',':'),'',strip_tags('<tr '.$part))), FILTER_SANITIZE_NUMBER_INT);
                         $caller_phone = str_replace('+91','',$caller_phone);
                         $caller_phone = mysql_escape_string($caller_phone);

        }
        
        if(strpos($part, 'Branch Info:')!==FALSE||strpos($part, 'Branch Info :')!==FALSE){
                     $caller_branch = trim(str_replace(array('Branch Info:','Branch Info :' ),'',strip_tags('<tr '.$part)));
                        $caller_branch = mysql_escape_string($caller_branch);
        }
        
        if(strpos($part, 'Caller Email:')!==FALSE||strpos($part, 'Caller Email :')!==FALSE){
                     $caller_email = trim(str_replace(array('\r\n', 'Caller Email', ':'),'',strip_tags('<tr '.$part)));
                     $caller_email = mysql_escape_string($caller_email);
        }
        
        if(strpos($part, 'Time:')!==FALSE|| strpos($part, 'Call Date')!==FALSE){
					//	echo $part;
                     $caller_time = trim(str_replace(array('Time:','Call', 'Date','&', 'Time :'),'',strip_tags('<tr '.$part)));
           $caller_time = trim(str_replace(array('Time:', 'Time :','Call', 'Date','&','amp;','='),'',strip_tags('<tr '.$part)));
           
                     
                    
        }
        
        if(strpos($part, 'City:')!==FALSE||strpos($part, 'City :')!==FALSE){
                     $caller_city = trim(str_replace(array('City:','City :' ),'',strip_tags('<tr '.$part)));
                   $caller_city = mysql_escape_string($caller_city);  
        }
        
       
    }
    
     $caller_name = isset($caller_name)?$caller_name:'';
     $caller_requirement = isset($caller_requirement)?$caller_requirement:'';  
    
     $caller_phone = isset($caller_phone)?$caller_phone:'';
     $caller_phoneextra = isset($caller_phoneextra)?$caller_phoneextra:''; 
     $caller_email = isset($caller_email)?$caller_email:''; 
    
     $caller_branch = isset($caller_branch)?$caller_branch:'';
     $caller_city = isset($caller_city)?$caller_city:'';  
    
     $caller_time = isset($caller_time)?$caller_time:'';
   
   // echo   $caller_time.'<br />' ; 
     //echo'start value:'. $startvalue.'<br />';
     date_default_timezone_set('Asia/Dili');
     
    $caller_time =  date('Y-m-d H:i:s', strtotime(str_replace('-', '/', $caller_time)));
     
   

    $query = "insert into jusdial (`Caller_Name`, `Caller_Requirement`, `Caller_Phone`,  "
            . "`Caller_PhoneExtra`,`Caller_Email`, `Caller_Branch`,`Caller_City`, `Date`) values"
            . " ('{$caller_name}', '{$caller_requirement}', '{$caller_phone}',"
            . "'{$caller_phoneextra}','{$caller_email}','{$caller_branch}', '{$caller_city}',"
            . " '{$caller_time}')  on duplicate key update `Caller_Name`='{$caller_name}'"
            . ",`Caller_Requirement`='{$caller_requirement}',"
            . "`Caller_PhoneExtra`='{$caller_phoneextra}' , `Date`='{$caller_time}'"; 

            
    $result = mysql_query($query) or die(mysql_error());  
	
		$caller_email = '';
    }
       
        $startvalue++;
    }
    
   
    imap_errors();
    imap_alerts();
    
    
   //sending new leads to email
    
    $query_new = "select * from jusdial where Date> DATE_SUB(NOW(), INTERVAL 12 HOUR) ";
    
    $result_new = mysql_query($query_new) or die(mysql_error());
    $day_data = '';
    while($row = mysql_fetch_assoc($result_new)){
        $day_data .= implode('  ',$row );
        $day_data .= '<br /><br />';
    }
    
   // echo $day_data;
    
    $to = "anupam.rekha@satyamtechnologies.net, tribhuvan.nayak@satyamhospital.com";
    
    $headers = "From: care@satyamhospital.com" . "\r\n" .
"CC: care@satyamhospital.com";
  
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
    
    if(strip_tags($day_data)!=''){
      mail($to, 'Satyam Contacts: JustDial ',$day_data , $headers);  
    }

        ?>
    </body>
</html>

