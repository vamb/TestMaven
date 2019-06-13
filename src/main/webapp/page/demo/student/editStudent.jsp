<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>editStudent</title>

	<style type="text/css">
		.self_label{
			width:100px;
			float:left;
			margin-right:20px;
			text-align:right;
			padding-right:10px;
			line-height:30px;
			font-family:Microsoft YaHei;
		}
	</style>
	
</head>
<meta name="menu" content="editStudent"/>

	<body>
		<h3 class="page-title">welcome to editStudent page</h2>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/stu/listStu">Student List</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="javascript:void(0)" onclick="loadCurrend()">
					<c:if test="${not empty stu.id }">
					edit student
					</c:if>
					<c:if test="${empty stu.id }">
					new student
					</c:if>
				</a>
			</li>
		</ul>
		<span id="backId" style="display:none;" >${stu.id }</span>
		<form id="inputForm" style="width:100%" role="form">
			<input type="hidden" name="id" value="${stu.id }" id="stuId" />
			<input type="hidden" name="isActive" value="${stu.isActive }" id="isActive" />
			<div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Student Name:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="name" value="${stu.name }" id="stuName" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Age:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="number" name="age" value="${stu.age }" id="stuAge" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Gender:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
						<label class="radio">
							<input type="radio" name="genter" value=true id="stuMale" />Male
						</label>
						<label class="radio">
							<input type="radio" name="genter" value=false id="stuFemale" />Female
						</label>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Class No.:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<select class="medium m-wrap" tabindex="1" name="demoClass.id" id="demoClass">
						<c:forEach var="cclass" items="${classlist}" varStatus="loop">
							<option value="${cclass.id}">${cclass.classCode}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			<%-- <div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Course Chosen:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<c:forEach var="course" items="${courseList}" varStatus="loop">
						<div style="width: 300px;height: 30px;">
							<div style="width:30px; float:left;height:30px;line-height:30px;">
								<Input class="courseClass" name="courseList.id" type="checkbox" value="${course.id}" />
							</div>
							<div class="courseTxt" style=" float:left;height:30px;line-height:30px;">
								${course.courseName} | ${course.courseDesc}
							</div>
						</div>
					</c:forEach>
				</div>
			</div> --%>
			
		</form>
		
		<div style="width:100%;height:100px;background-color:#efefef;margin-top:30px;">
			<div style="width:100%;line-height:80px;margin-top:20px;height:80px;">
				<button type="button" style="margin-left:20px;" onclick="submitAction()" class="btn btn-primary">submit</button>
				<button type="button" style="margin-left:20px;" onclick="resetAction()" class="btn btn-primary">reset</button>
				<button type="button" style="margin-left:20px;" onclick="cancelAction()" class="btn btn-primary">cancel</button>
			</div>
		</div>
		
		<form id="hiddenForm" action="" method="post">
			<input type="hidden" id="hiddenId" name="id" value="${stu.id }" />
		</form>
		<script type="text/javascript">
			
			function loadCurrend(){
				$("#hiddenForm").attr("action", "${rc.contextPath}/stu/editStu");
				$("#hiddenForm").submit();
			}
			
			function submitAction(){
				/* var checkboxSize = $(".courseClass").length;
				var courseList = [];
				for(var i=0; i<checkboxSize; i++){
					courseList.push({id: $(".courseClass").eq(i).val()})
				} */
			/* 	var stuMale = $("#stuMale").val();
				var stuFemale = $("#stuFemale").val(); 
				console.log("submitAction stuMale stuFemale", stuMale, stuFemale)
				
				var stuObj = {
					id: $("#stuId").val(),
					name: $("#stuName").val(),
					age: $("#stuAge").val(),
					isActive: $("#isActive").val(),
					courseList: courseList,
					demoClass: {
						id: $("#demoClass").val(),
					}
				}*/
				/* 	console.log("checkboxlist", courseList, stuObj)
				$.ajax({
					url : "${rc.contextPath}/stu/saveStu",
					data : JSON.stringify(stuObj),
					type : "POST",
					contentType: "application/json",
					dataType : "json",
					success : function(res) {
					var str = '';
						$(res.reserveFlowList).each(function(i, obj){
							var responseCode = obj.responseCode;
							var orderNo = obj.reserveFlow.orderNo;
							if (responseCode == 0) {
								str += "订单号为"+ orderNo +"成功<br/>";
							} else {
								str += "订单号为"+ orderNo + obj.responseMsg +"<br/>"
							}
						});
						
						$('#error2').dialog('open').dialog('center').dialog('setTitle', '提示');
						$('#error2').html(str);
						// 刷新列表
						linkOrder.unfresh_LinkOrder(); 
						console.log("success")
					}
				});*/

			 	$("#inputForm").attr("action", "${rc.contextPath}/stu/saveStu");
				$("#inputForm").submit();
			}
			
			function resetAction(){
				$("#hiddenId").val($("#backId").text());
				$("#hiddenForm").attr("action", "${rc.contextPath}/stu/editStu");
				$("#hiddenForm").submit();
			}
			
			function cancelAction(){
				$("#inputForm").attr("action", "${rc.contextPath}/stu/listStu");
				$("#inputForm").submit();
			}
			
		</script>
	</body>
</html>
