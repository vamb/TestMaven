var warn_message = {
		info : "<div class='alert alert-info'></div>",
		warn :"<div class='alert'>test warn</div>", 
		error :"<div class='alert alert-error'></div>", 
		success :"<div class='alert alert-success'></div>",
};
$.extend({
	msgWarn:function (message){
		$(".page-content").prepend($(warn_message.info));
	},
	msgInfo:function (message){
		
	},
	msgError:function (message){
		
	},
	msgSuccess:function (message){
		
	}
});