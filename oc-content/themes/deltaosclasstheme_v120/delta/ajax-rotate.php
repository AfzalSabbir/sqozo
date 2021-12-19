<?php
// IMAGE ROTATION ON PUBLISH PAGE
$params = $_POST;

if($params['action'] == 'rotate' && $params['file_name'] <> '' && $params['file_src'] <> '') {
  header('Content-type: image/jpeg');

  $degrees = -90; 
  $filename = $params['file_name'];
  $filesrc = $params['file_src'];

  $ext = pathinfo($filename, PATHINFO_EXTENSION);

  if(strtolower($ext) == 'jpg' || strtolower($ext) == 'jpeg') {
    $source = imagecreatefromjpeg($filesrc);
    $rotate = imagerotate($source, $degrees, 0);

    // save
    imagejpeg($rotate, $filesrc); 
 
    imagedestroy($source);  //free up the memory
    imagedestroy($rotate);  //free up the memory
  } else if(strtolower($ext) == 'png') {
    $source = imagecreatefrompng($filesrc);
    $rotate = imagerotate($source, $degrees, 0);

    // save
    imagepng($rotate, $filesrc); 
 
    imagedestroy($source);  //free up the memory
    imagedestroy($rotate);  //free up the memory
  }
}
?>