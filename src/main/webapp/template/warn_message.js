var warn_message = {
		info : "<div class='alert alert-info'></div>",
		warn :"<div class='alert alert-warn'>test warn</div>", 
		error :"<div class='alert alert-error'></div>", 
		success :"<div class='alert alert-success'></div>",
};
$.extend({
	msgWarn:function (message){
		$(".page-content").prepend($(warn_message.warn).text(message));
		$(".alert-warn").delay(4000).hide(0);
	},
	msgInfo:function (message){
		$(".page-content").prepend($(warn_message.info).text(message));
		$(".alert-info").delay(4000).hide(0);
	},
	msgError:function (message){
		$(".page-content").prepend($(warn_message.error).text(message));
		$(".alert-error").delay(4000).hide(0);
	},
	msgSuccess:function (message){
		$(".page-content").prepend($(warn_message.success).text(message));
		$(".alert-success").delay(4000).hide(0);
	}
});