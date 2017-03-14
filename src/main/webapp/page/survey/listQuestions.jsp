<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>listQuesitons</title>
	</head>
	<meta name="menu" content="listSurveys"/>
	
	<body>
		<h3 class="page-title" style="height:50px;">
			问卷问题管理
		</h3>
		
		<ul class="breadcrumb">
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
				<a href="javascript:void(0)" onclick="listQuestion()">Survey Questions</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newQuestion()"><span>New Question</span></a>
			</div>
		</div>
		
		<div style="width:100%;">
		
			<div style="width:100%;margin-bottom:20px;">Survey Name: ${survey.suryName }</div> 
			<input type="hidden" value="${survey.id }" />
		
			<div class="portlet box green">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-comments"></i>
						Table
					</div>
					<div class="tools">
						<a class="collapse" href="javascript:;"></a>
						<a class="config" data-toggle="modal" href="#portlet-config"></a>
						<a class="reload" href="javascript:;"></a>
						<a class="remove" href="javascript:;"></a>
					</div>
				</div>
				
				<div class="portlet-body" style="display: block;">
					<table class="table table-striped table-hover">
						<thead>
							<tr style="width:100%;">
								<th style="width:5%">Num</th>
								<th style="width:10%;">Id</th>
								<th style="width:25%;">qustName</th>
								<th style="width:20%;">qustType</th>
								<th style="width:10%;">Sorting</th>
								<th style="width:30%;">Option</th>
							</tr>
						</thead>
						<tbody id="targetTbody">
							<c:forEach var="qust" items="${questions}" varStatus="index">
								<tr style="width:100%;">
									<td style="width:5%;">${index.count }</td>
									<th style="width:10%;">${qust.id }</th>
									<td style="width:25%;">${qust.qustName }</td>
									<td style="width:20%;">${qust.qustType eq'S'?'Single':'Multiple' }</td>
									<td style="width:10%;">${qust.sorting }</td>
									<td style="width:30%;">
										<span>
											<a class="tableModify"
												attrId="${qust.id }" 
												attrName="${qust.qustName }" 
												attrType="${qust.qustType }"
												attrSorting="${qust.sorting }" 
											onclick="modifyAction(this)" href="javascript:void(0)">modify</a>
										</span>
										<span>|</span>
										<span><a class="tableDelete" attrId="${qust.id }" onclick="deleteAction(this)" href="javascript:void(0)">delete</a></span>
										<span>|</span>
										<span><a class="tableAddOption" attrId="${qust.id }" onclick="addOptionAction(this)" href="javascript:void(0)">add Option</a></span>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<form id="hiddenForm" action="" method="post">
						<input type="hidden" id="hiddenId" name="id" value="" />
						<input type="hidden" id="hiddenSuryId" name="suryId" value="${survey.id }" />
						<input type="hidden" id="hiddenQustName" name="qustName" value="" />
						<input type="hidden" id="hiddenQustType" name="qustType" value="" />
						<input type="hidden" id="hiddenSorting" name="sorting" value="" />
					</form>
				</div>
				
			</div>
		</div>
		<script type="text/javascript">
		
			function modifyAction(obj){
				var lineNum = $(obj).parent().parent().parent().children("td").eq(0).text();
				var qustId = $(obj).attr("attrId");
				var qustName = $(obj).attr("attrName");
				var qustType = $(obj).attr("attrType");
				var qustSorting = $(obj).attr("attrSorting");
				
				var qustTypeCode = "";
				
				if(qustType == "S"){
					qustTypeCode = 
						"<div style='width:40%;float:left;'>"+
							"<input type='checkbox' id='signalQust' onclick='changeOption(this)' checked value='S' style='margin-top:-3px;'/ >"+
							"<span style='margin-left:10px;line-height:30px;'>S</span>"+
						"</div>"+   
						"<div style='width:40%;float:left;'>"+
							"<input type='checkbox' id='MultipleQust' onclick='changeOption(this)' value='M' style='margin-top:-3px;'/>"+
							"<span style='margin-left:10px;line-height:30px;'>M</span>"+
						"</div>";
				}else{
					"<div style='width:40%;float:left;'>"+
						"<input type='checkbox' id='signalQust' onclick='changeOption(this)' value='S' style='margin-top:-3px;'/ >"+
						"<span style='margin-left:10px;line-height:30px;'>S</span>"+
					"</div>"+   
					"<div style='width:40%;float:left;'>"+
						"<input type='checkbox' id='MultipleQust' onclick='changeOption(this)' checked value='M' style='margin-top:-3px;'/>"+
						"<span style='margin-left:10px;line-height:30px;'>M</span>"+
					"</div>";
				}

				var modifyCode = 
						"<td style='width:5%;'>"+ lineNum +"</td>"+
						"<th style='width:10%;' id='modifyId'>"+ qustId +"</th>"+
						"<td style='width:25%;'><input type='text' class='newInput' id='qustName' name='qustName' value='"+ qustName +"' style='width:80%;'/></td>"+
						"<td style='width:20%;'>"+
							"<input type='hidden' id='qustType' value='"+ qustType +"' name='qustType' newInput/>"+
							"<div style='width:100%;'>"+
								qustTypeCode +
								"<div style='clear:both;'></div>"+
							"</div>"+
						"</td>"+
						
						"<td style='width:10%;'><input type='number' class='newInput' id='sorting' name='sorting' value='"+ qustSorting +"' style='width:80%;'/></td>"+
						"<td style='width:30%;'>"+
							"<span><a class='tableModify' attrId='' "+
								"onclick='saveQustAction(this)' style='line-height:30px;' href='javascript:void(0)'>save</a></span>"+
							"<span style='line-height:30px;'>&nbsp;|&nbsp;</span>"+
							"<span><a class='tableCancel' attrId=''"+
								"onclick='cancelAction(this)' style='line-height:30px;' href='javascript:void(0)'>cancel</a></span>"+
						"</td>";
				$(obj).parent().parent().parent().html(modifyCode);
			}
			
			function deleteAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/question/deleteQuesiton");
				$("#hiddenForm").submit();
			}
			
			function addOptionAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/option/listOptions");
				$("#hiddenForm").submit();
			}
			
			function listQuestion(){
				$("#hiddenId").val($("#hiddenSuryId").val());
				$("#hiddenForm").attr("action","${rc.contextPath}/question/listQuesitons");
				$("#hiddenForm").submit();
			}
			
			function newQuestion(){
				var lastNum = $("#targetTbody").children("tr").length;
				lastNum = parseInt(lastNum) + parseInt(1);
				
				if($(".newInput").length != 0){
					alert("please commit first");
					return;
				}
				
				var codeStr = 
					"<tr style='width:100%;'>"+
						"<td style='width:5%;'>"+ lastNum +"</td>"+
						"<th style='width:10%;'></th>"+
						"<td style='width:25%;'><input type='text' class='newInput' id='qustName' name='qustName' value='' style='width:80%;'/></td>"+
		
						"<td style='width:20%;'>"+
							"<input type='hidden' id='qustType' value='S' name='qustType' newInput/>"+
							"<div style='width:100%;'>"+
								"<div style='width:40%;float:left;'>"+
									"<input type='checkbox' id='signalQust' onclick='changeOption(this)' checked value='S' style='margin-top:-3px;'/ >"+
									"<span style='margin-left:10px;line-height:30px;'>S</span>"+
								"</div>"+   
								"<div style='width:40%;float:left;'>"+
									"<input type='checkbox' id='MultipleQust' onclick='changeOption(this)' value='M' style='margin-top:-3px;'/>"+
									"<span style='margin-left:10px;line-height:30px;'>M</span>"+
								"</div>"+
								"<div style='clear:both;'></div>"+
							"</div>"+
						"</td>"+
						
						"<td style='width:10%;'><input type='number' class='newInput' id='sorting' name='sorting' value='' style='width:80%;'/></td>"+
						"<td style='width:30%;'>"+
							"<span><a class='tableModify' attrId='' "+
								"onclick='saveQustAction(this)' style='line-height:30px;' href='javascript:void(0)'>save</a></span>"+
							"<span style='line-height:30px;'>&nbsp;|&nbsp;</span>"+
							"<span><a class='tableCancel' attrId=''"+
								"onclick='cancelAction(this)' style='line-height:30px;' href='javascript:void(0)'>cancel</a></span>"+
						"</td>"+
					"</tr>";
				
				$("#targetTbody").append(codeStr);
			}
			
			function saveQustAction(obj){
				if($("#modifyId").text() != ""){
					$("#hiddenId").val($("#modifyId").text());
				}
				$("#hiddenQustName").val($("#qustName").val());
				$("#hiddenQustType").val($("#qustType").val());
				$("#hiddenSorting").val($("#sorting").val());
				$("#hiddenForm").attr("action","${rc.contextPath}/question/saveQuestion");
				$("#hiddenForm").submit();
			}
			
			function cancelAction(obj){
				$("#hiddenId").val($("#hiddenSuryId").val());
				$("#hiddenForm").attr("action","${rc.contextPath}/question/listQuesitons");
				$("#hiddenForm").submit();
			}
			
			function changeOption(obj){
				if(typeof $(obj).attr("checked") != "undefined"){
					if($(obj).attr("id") == "signalQust"){
						$(obj).parent().parent().children("div").eq(1).children("input").eq(0).removeAttr("checked");
						$(obj).parent().parent().parent().children("input").eq(0).val("S");
					}else{
						$(obj).parent().parent().children("div").eq(0).children("input").eq(0).removeAttr("checked");
						$(obj).parent().parent().parent().children("input").eq(0).val("M");
					}
				}else{
					if($(obj).attr("id") == "signalQust"){
						$(obj).parent().parent().children("div").eq(1).children("input").eq(0).attr("checked","checked");
						$(obj).parent().parent().parent().children("input").eq(0).val("M");
					}else{
						$(obj).parent().parent().children("div").eq(0).children("input").eq(0).attr("checked","checked");
						$(obj).parent().parent().parent().children("input").eq(0).val("S");
					}
				}
			}
			
		</script>
	
	</body>
	
</html>
