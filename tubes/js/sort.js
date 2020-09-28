$(document).ready(function(){
	
	$('#metode').on('click',function(){
		$('#container').load('ajax/sort.php?metode=' + $('#metode').val());	
	});	
	$('#metode1').on('click',function(){
		$('#container').load('ajax/sort_user.php?metode1=' + $('#metode1').val());	
	});	
	$('#metode2').on('click',function(){
		$('#container').load('ajax/sort_hotlist.php?metode2=' + $('#metode2').val());	
	});	
});
