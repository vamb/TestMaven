var GLOBAL_MSG_HIDDEN_TIMEOUT = 5000;

var app_alert_level = {
		DEFAULT : "<s:message code='app.msg.level.default' />",
		info : "<s:message code='app.msg.level.info' />",
		error : "<s:message code='app.msg.level.error' />",
		success : "<s:message code='app.msg.level.success' />",
	};

$.extend({
	submitFormWoMsg:function(){
		document.forms[0].submit();
		$.disabledDocElement();
	},
	disabledDocElement:function(){
		$('input[type!=hidden]').each(function (){
			$(this).attr("disabled","disabled");
		});
		$('textarea').each(function (){
			$(this).attr("disabled","disabled");
		});
		$('a').each(function (){
			$(this).attr("herf","#");
			$(this).attr("onclick",function(){return false;});
		});
	},
	msgClear:function(){
		$(".alert").each(function(){
			$(this).remove();
		});
	},
	msgWarn:function(message,targetElement){
		var closeButton = "<button class=\"close\" data-dismiss=\"alert\"></button>";
		var msgDiv = "<div class=\"alert\"></div>";
		var content = "<strong>"+app_alert_level.DEFAULT+"</strong>" +message;
		var _msgDiv = $(msgDiv);
		var _closeButton = $(closeButton);
		_msgDiv.prepend(_closeButton);
		_msgDiv.prepend(content);
		if(targetElement == null){
			$(".page-content").prepend(_msgDiv);
		}else{
			if(targetElement.parents(".modal-dialog").length >0){
				$(".modal-body").prepend(_msgDiv);
			}else{
				$(".page-content").prepend(_msgDiv);
			}
		}
		setTimeout (function(){
			if(targetElement == null){
				_msgDiv.alert("close");
			}else{
				if(targetElement.parents(".modal-dialog").length >0){
					var __msgDiv = $(".modal-dialog").find(".alert");
					__msgDiv.remove();
				}else{
					$(".page-content").prepend(_msgDiv);
					_msgDiv.alert("close");
				}
			}
			
		},GLOBAL_MSG_HIDDEN_TIMEOUT);
	},
	msgInfo:function(message,targetElement){
		var closeButton = "<button class=\"close\" data-dismiss=\"alert\"></button>";
		var msgDiv = "<div class=\"alert alert-info\"></div>";
		var content = "<strong>"+app_alert_level.info+"</strong>" +message;
		var _msgDiv = $(msgDiv);
		var _closeButton = $(closeButton);
		_msgDiv.prepend(_closeButton);
		_msgDiv.prepend(content);
		if(targetElement == null){
			$(".page-content").prepend(_msgDiv);
		}else{
			if(targetElement.parents(".modal-dialog").length >0){
				$(".modal-body").prepend(_msgDiv);
			}else{
				$(targetElement).prepend(_msgDiv);
			}
		}
		setTimeout (function(){
			if(targetElement == null){
				_msgDiv.alert("close");
			}else{
				if(targetElement.parents(".modal-dialog").length >0){
					var __msgDiv = $(".modal-dialog").find(".alert");
					__msgDiv.remove();
				}else{
					$(".page-content").prepend(_msgDiv);
					_msgDiv.alert("close");
				}
			}
			
		},GLOBAL_MSG_HIDDEN_TIMEOUT);
	},
	msgError:function(message,targetElement){
		var closeButton = "<button class=\"close\" data-dismiss=\"alert\"></button>";
		var msgDiv = "<div class=\"alert alert-error\"></div>";
		var content = "<strong>"+app_alert_level.error+"</strong>" +message;
		var _msgDiv = $(msgDiv);
		var _closeButton = $(closeButton);
		_msgDiv.prepend(_closeButton);
		_msgDiv.prepend(content);
		if(targetElement == null){
			$(".page-content").prepend(_msgDiv);
		}else{
			if(targetElement.parents(".modal-dialog").length >0){
				$(".modal-body").prepend(_msgDiv);
			}else{
				$(targetElement).prepend(_msgDiv);
			}
		}
		$(".go-top").click();
		setTimeout (function(){
			if(targetElement == null){
				_msgDiv.alert("close");
			}else{
				if(targetElement.parents(".modal-dialog").length >0){
					var __msgDiv = $(".modal-dialog").find(".alert");
					__msgDiv.remove();
				}else{
					$(".page-content").prepend(_msgDiv);
					_msgDiv.alert("close");
				}
			}
			
		},GLOBAL_MSG_HIDDEN_TIMEOUT);
	},
	msgSuccess:function(message,targetElement){
		var closeButton = "<button class=\"close\" data-dismiss=\"alert\"></button>";
		var msgDiv = "<div class=\"alert alert-success\"></div>";
		var content = "<strong>"+app_alert_level.success+"</strong>" +message;
		var _msgDiv = $(msgDiv);
		var _closeButton = $(closeButton);
		_msgDiv.prepend(_closeButton);
		_msgDiv.prepend(content);
		if(targetElement == null){
			$(".page-content").prepend(_msgDiv);
		}else{
			if(targetElement.parents(".modal-dialog").length >0){
				$(".modal-body").prepend(_msgDiv);
			}else{
				$(".page-content").prepend(_msgDiv);
			}
		}
		$(".go-top").click();
		setTimeout (function(){
			if(targetElement == null){
				_msgDiv.alert("close");
			}else{
				if(targetElement.parents(".modal-dialog").length >0){
					var __msgDiv = $(".modal-dialog").find(".alert");
					__msgDiv.remove();
				}else{
					$(".page-content").prepend(_msgDiv);
					_msgDiv.alert("close");
				}
			}
			
		},GLOBAL_MSG_HIDDEN_TIMEOUT);
	},
	prepareMessage:function(messageKey,sectionDiv,callback){
		var path=app_context + "/common/prepareMessage";
		$.ajax({
			url:path,
			data : {"messageKey":messageKey},
			type:"post",
			success:function(data){
				if(data.status == 200){
					if(callback!=null){
						callback(data);
					}
				}else{
					$.msgWarn(data.data + "-[" +messageKey+"]",sectionDiv);
				}
			},
			error: function (e) {
				$.msgError(app_error_network,sectionDiv);
			}
		});
	}
});