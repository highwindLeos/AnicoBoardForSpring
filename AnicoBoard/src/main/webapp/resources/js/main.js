/**
 *  Coin Play
 */

$(document).ready(function() {
	
	var coin = new Audio('http://localhost:8081/anicoboard/resources/js/source/Coin.wav');
	$('.logo').hover(function(){
		coin.play();
	});
	 
}); 