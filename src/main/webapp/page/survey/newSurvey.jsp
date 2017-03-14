<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>newSurvey</title>
	<style type="text/css">
		.round_input {
			border-radius: 8px;
			-webkit-border-radius: 8px;
			-moz-border-radius: 8px;
			-ms-border-radius: 8px;
		}
	</style>
</head>
<meta name="menu" content="listSurveys"/>

<body style="font-family:'microsoft yahei';">
	<h3 class="page-title" style="height:50px;">
		welcome to 
		<c:if test="${survey eq null }">
			newSurvey
		</c:if>
		<c:if test="${survey ne null }">
			<c:if test="${survey.id ne null }">
			editSurvey
			</c:if>
		</c:if>
		page
	</h3>

	<ul class="breadcrumb" style="display:block;">
		<li>
			<i class="icon-home"></i>
			<a href="${rc.contextPath}/common/index">Home</a>
			<i class="icon-angle-right"></i>
		</li>
		<li>
			<a href="${rc.contextPath}/survey/listSurveys">Survey List</a>
			<i class="icon-angle-right"></i>
		</li>
		<li>
			<c:if test="${survey.id eq null}">
				<a href="${rc.contextPath }/survey/newSurvey">new Survey</a>
			</c:if>
			<c:if test="${survey.id ne null}">
				<a style="cursor:pointer;" onclick="resetAction()">edit Survey</a>
			</c:if>
		</li>
	</ul>
	
	<div style="width:100%;margin-top:30px;height:80px;border-bottom:1px solid #eaeaea;">
		<form action="" id="actionForm" method="post">
			<input type="hidden" id="hiddenId" name="id" value="${survey.id }" />
			<div style="width:70%;height:80px;">
				<div style="width:30%;float:left;height:80px;">
					<div style="height:80px;width:100px;float:right;margin-right:40px;">
						<span style="line-height:80px;">survey name:</span>
					</div>
				</div>
				<div style="width:70%;float:left;height:80px">
					<div style="height:80px;float:left;margin-left:10px;width:100%;line-height:80px;">
						<input type="text" name="suryName" value="${survey.suryName }" class="round_cycle" style="line-height:80px;width:250px;"/>
					</div>
				</div>
				<div style="clear:both;"></div>
			</div>  
			
			<div style="width:70%;height:80px;border-bottom:1px solid #eaeaea;">
				<div style="width:30%;float:left;height:80px;">
					<div style="height:80px;width:100px;float:right;margin-right:40px;">
						<span style="line-height:80px;">sorting:</span>
					</div>
				</div>
				<div style="width:70%;float:left;height:80px">
					<div style="height:80px;float:left;margin-left:10px;width:100%;line-height:80px;">
						<input type="number" name="sorting" value="${survey.sorting }" class="round_cycle" style="line-height:80px;width:250px;"/>
					</div>
				</div>
				<div style="clear:both;"></div>
			</div>
			
			<div style="width:70%;height:80px;border-bottom:1px solid #eaeaea;">
				<div style="width:30%;float:left;height:80px;">
					<div style="height:80px;width:100px;float:right;margin-right:40px;">
						<span style="line-height:80px;">Deleted:</span>
					</div>
				</div>
				<div style="width:70%;float:left;height:80px">
					<div style="height:80px;float:left;margin-left:10px;width:100%;line-height:80px;">
						<input type="hidden" id="hiddenDeleted" name="deleted" 
							value="${survey.deleted }" class="round_cycle" style="line-height:80px;width:250px;"/>
						
						<div style="line-height:80px;float:left;margin-right:20px;">
							<input type="checkbox" class="options" onclick="optionClick(this)" checked
								value="正常" id="normal" style="line-height:80px;margin-top:-2px;"/>
							<span style="line-height:80px;">normal</span>
						</div>
						
						<div style="line-height:80px;float:left;">
							<input type="checkbox" class="options" onclick="optionClick(this)" 
								value="删除" id="deleted" style="line-height:80px;margin-top:-2px;"/>
							<span style="line-height:80px;">deleted</span>
						</div>
						
						<div style="clear:both;"></div>
					</div>
				</div>
				<div style="clear:both;"></div>
			</div>
			
			<div style="width:100%;height:100px;margin-top:200px;padding-top:30px;background:#827676;">
				<div style="width:100%;height:40px;">
					<div style="line-height:40px;float:left;margin-left:10px;width:70px;text-align:center;"  onclick="submitAction()">
						<span class="btn round_input" style="width:35px;">sure</span>
					</div>
					<div style="line-height:40px;float:left;margin-left:10px;width:70px;text-align:center;" onclick="cancelAction()">
						<span class="btn round_input" style="width:35px;">cancel</span>
					</div>
					<div style="line-height:40px;float:left;margin-left:10px;width:70px;text-align:center;"  onclick="resetAction()">
						<span class="btn round_input" style="width:35px;">reset</span>
					</div>
				</div>
			</div>
			
		</form>
	</div>

	<script type="text/javascript">
			
			function optionClick(obj){
				if((typeof $(obj).attr("checked") != "undifined") && ($(obj).attr("checked") == "checked")){
					if($(obj).attr("id") == "normal"){
						$("#deleted").removeAttr("checked");
						$("#hiddenDeleted").val(0);
					}else{
						$("#normal").removeAttr("checked");
						$("#hiddenDeleted").val(1);
					}
				}else{
					if($(obj).attr("id") == "normal"){
						$("#deleted").attr("checked","checked");
						$("#hiddenDeleted").val(1);
					}else{
						$("#normal").attr("checked","checked");
						$("#hiddenDeleted").val(0);
					}
				}
			}
			
			function submitAction(){
				$("#actionForm").attr("action","${rc.contextPath}/survey/saveSurvey");
				$("#actionForm").submit();
			}
			
			function cancelAction(){
				$("#actionForm").attr("action","${rc.contextPath}/survey/listSurveys");
				$("#actionForm").submit();
			}
			
			function resetAction(){
				if($("#newSurvey").val() != ''){
					$("#actionForm").attr("action","${rc.contextPath}/survey/detailSurvey");
					$("#actionForm").submit();
				}else{
					$("#actionForm").attr("action","${rc.contextPath}/survey/newSurvey");
					$("#actionForm").submit();
				}
			}
			
		</script>

</body>
</html>
