$(document).ready(function(){
	$('#table').DataTable();
});
$(".glyphicon-remove").click(function () {
	    var obj=$(this);
	    obj.attr("data-toggle","modal");
	    obj.attr("data-target","#myDel");
	    var str=$(obj.parent().parent().children().first()).text();
	    $(".frm-del").attr("action","delnews?id="+str.trim()+"");
	});