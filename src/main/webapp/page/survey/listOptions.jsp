<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>listOptions</title>
	</head>
	<meta name="menu" content="listSurveys"/>
	
	<body>
		<h3 class="page-title" style="height:50px;">
			问卷问题选项管理
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
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="javascript:void(0)" onclick="listOption()">Question Options</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newOption()"><span>New Option</span></a>
			</div>
		</div>
		<input type="hidden" id="hiddenSurveyId" value="${survey.id }">
		<input type="hidden" id="hiddenSurveyName" value="${survey.suryName }" >
		<input type="hidden" id="hiddenQuestionId" value="${question.id }" />
		<input type="hidden" id="hiddenQuestionName" value="${question.qustName }" />
		<input type="hidden" id="hiddenQuestionType" value="${question.qustType }" />
		
		<form id="hiddenForm" style="display:none;" action="" method="post" >
			<input type="hidden" id="hiddenId" name="id" value="" />
			<input type="hidden" id="hiddenName" name="optnName" />
			<input type="hidden" id="hiddenSorting" name="sorting" />
			<input type="hidden" id="hiddenQustId" name="qustId" value="${question.id }" >
		</form>
		
		<div style="width:100%;">
		
			<div style="width:100%;margin-bottom:20px;">Survey Name: ${survey.suryName }</div> 
			<div style="width:100%;margin-bottom:20px;">Question Name: ${question.qustName };</div>
		
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
								<th style="width:55%;">optnName</th>
								<th style="width:10%;">Sorting</th>
								<th style="width:20%;">Option</th>
							</tr>
						</thead>
						<tbody id="targetTbody">
							<c:forEach var="optn" items="${options}" varStatus="index">
								<tr style="width:100%;">
									<td style="width:5%;">${index.count }</td>
									<td style="width:10%;">${optn.id }</td>
									<td style="width:55%;">${optn.optnName }</td>
									<td style="width:10%;">${optn.sorting }</td>
									<td style="width:20%;">
										<span>
											<a class="tableModify"
												attrId="${optn.id }" 
												attrName="${optn.optnName }" 
												attrSorting="${optn.sorting }" 
											onclick="modifyAction(this)" href="javascript:void(0)">modify</a>
										</span>
										<span>|</span>
										<span><a class="tableDelete" attrId="${optn.id }" onclick="deleteAction(this)" href="javascript:void(0)">delete</a></span>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>
				
			</div>
		</div>
		
		<script type="text/javascript">
		
			function listQuestion(){
				$("#hiddenId").val($("#hiddenSurveyId").val());
				$("#hiddenForm").attr("action", "${rc.contextPath}/question/listQuesitons");
				$("#hiddenForm").submit();
			}
			
			function listOption(){
				$("#hiddenId").val($("#hiddenQuestionId").val());
				$("#hiddenForm").attr("action", "${rc.contextPath}/option/listOptions");
				$("#hiddenForm").submit();
			}
			
			function newOption(){
				var lastNum = $("#targetTbody").children("tr").length;
				lastNum = parseInt(lastNum) + parseInt(1);
				
				if($(".newInput").length !=0){
					alert("plesae commit first");
					return;
				}
				
				var codeStr = 
					"<tr style='width:100%;'>"+
						"<td style='width:5%;'>"+ lastNum +"</td>"+
						"<td style='width:10%;'></td>"+
						"<td style='width:55%;'><input type='text' class='newInput' id='optnName' name='optnName' value='' style='width:80%;'/></td>"+
						"<td style='width:10%;'><input type='number' class='newInput' id='sorting' name='sorting' value='' style='width:80%;'/></td>"+
						"<td style='width:30%;'>"+
							"<span><a class='tableModify' attrId='' "+
								"onclick='saveOptionAction(this)' style='line-height:30px;' href='javascript:void(0)'>save</a></span>"+
							"<span style='line-height:30px;'>&nbsp;|&nbsp;</span>"+
							"<span><a class='tableCancel' attrId=''"+
								"onclick='cancelAction(this)' style='line-height:30px;' href='javascript:void(0)'>cancel</a></span>"+
						"</td>"+
					"</tr>";
				
				$("#targetTbody").append(codeStr);
			}
			
			function saveOptionAction(obj){
				var optionId = $(obj).parent().parent().parent().children("td").eq(1).text();
				$("#hiddenId").val(optionId);
				$("#hiddenName").val($("#optnName").val());
				$("#hiddenSorting").val($("#sorting").val());
				$("#hiddenForm").attr("action", "${rc.contextPath}/option/saveOption");
				$("#hiddenForm").submit();
			}
			
			function cancelAction(){
				$("#hiddenId").val($("#hiddenQuestionId").val());
				$("#hiddenForm").attr("action","${rc.contextPath}/option/listOptions");
				$("#hiddenForm").submit();
			}
			
			function modifyAction(obj){
				if($(".newInput").length !=0){
					alert("plesae commit first");
					return;
				}
				var lineNum = $(obj).parent().parent().parent().children("td").eq(0).text();
				var optnId = $(obj).attr("attrId");
				var optnName = $(obj).attr("attrName");
				var optnSorting = $(obj).attr("attrSorting");
				
				var codeStr = 
					"<td style='width:5%;'>"+ lineNum +"</td>"+
					"<td style='width:10%;'>"+ optnId +"</td>"+
					"<td style='width:55%;'><input type='text' class='newInput' id='optnName' name='optnName' value='"+ optnName +"' style='width:80%;'/></td>"+
					"<td style='width:10%;'><input type='number' class='newInput' id='sorting' name='sorting' value='"+ optnSorting +"' style='width:80%;'/></td>"+
					"<td style='width:30%;'>"+
						"<span><a class='tableModify' attrId='"+ optnId +"' "+
							"onclick='saveOptionAction(this)' style='line-height:30px;' href='javascript:void(0)'>save</a></span>"+
						"<span style='line-height:30px;'>&nbsp;|&nbsp;</span>"+
						"<span><a class='tableCancel' attrId='"+ optnId +"'"+
							"onclick='cancelAction(this)' style='line-height:30px;' href='javascript:void(0)'>cancel</a></span>"+
					"</td>";
				$(obj).parent().parent().parent().html(codeStr);
			}
			
			function deleteAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/option/deleteOption");
				$("#hiddenForm").submit();
			}
			
		</script>
	
	</body>
	
</html>
