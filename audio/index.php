<?php


if( isset ($_GET['getRandomAudio']) ){
	$files = array_filter(glob('*.mp3'));
	$rand_audio = array_rand($files, 1);

	$actual_link = "http://$_SERVER[HTTP_HOST]/portfolio/audio/";
	echo $actual_link.$files[$rand_audio];
}

else {
	$files = array_filter(glob('*.mp3'));
	foreach($files as $file){
		echo '<img style="vertical-align: middle;" width="30" height="30" src="http://img.tengounmac.es/2012/12/iTunes.png" alt="mp3"/>';
		echo '<a href="'.$file.'">'.$file.'</a><br/>';
	}
}


