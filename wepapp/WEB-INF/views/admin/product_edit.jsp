<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<html>
<head>
	<title>쇼핑몰 관리자 홈페이지</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link href="/assets/css/font.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
<br>
<jsp:include page="/include/admin-menu.jsp"/>
<hr width='900' size='3'>

<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<form name="form1" method="post" action="/admin/product_modify" enctype="multipart/form-data">
<table width="800" border="1" cellspacing="0" cellpadding="3" bordercolordark="white" bordercolorlight="black">
	<tr height="23"> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품분류</td>
    	<td width="700" bgcolor="#F2F2F2">
			<select name="menu">
				<option value="0">상품분류를 선택하세요</option>
				<option value="1">국산</option>
				<option value="2" selected>수입</option>
				<option value="3">sale</option>
			</select>
			<select name="menu">
				<option value="0">상품분류를 선택하세요</option>
				<option value="1">현대</option>
				<option value="2" selected>기아</option>
				<option value="3">삼성</option>
				<option value="4">대우</option>
				<option value="5">쌍용</option>
			</select>
		</td>
	</tr>
	<tr height="23"> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품코드</td>
		<td width="700"  bgcolor="#F2F2F2">
			<input type="text" name="code" value="${vo.product_code}" size="20" maxlength="20">
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품명</td>
		<td width="700"  bgcolor="#F2F2F2">
			<input type="text" name="name" value="${vo.name}" size="60" maxlength="60">
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">판매가</td>
		<td width="700"  bgcolor="#F2F2F2">
			<input type="text" name="price" value="${vo.car_price }" size="12" maxlength="12"> 원
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">색상</td>
		<td width="700" bgcolor="#F2F2F2">
			<input type="text" name="car_color" size="12" value="${vo.color}">
		</td>
		
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">연식</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="make_year" value="${vo.make_year}" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">연료</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="oil" value="${vo.oil}" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">변속기</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="gearBox" value="${vo.gearBox}" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">주행거리</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="maileage" value="${vo.maileage}" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">배기량</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="cc" value="${vo.cc }">
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">사고유무</td>
	<c:if test="${vo.accident == 'yes' }">
		<td width="700" bgcolor="#F2F2F2">
			<input type="radio" name="accident" value="yes" selected >yes
			<input type="radio" name="accident" value="no" >no
			</td>
			</c:if>
	<c:if test="${vo.accident=='no'}">
			<input type="radio" name="accident" value="yes" >yes
			<input type="radio" name="accident" value="no"  selected>no
			</td>
			</c:if>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">차량번호</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="car_number" value="${vo.car_number}" >
			</td>
	</tr>
	
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">제품설명</td>
		<td width="700" bgcolor="#F2F2F2">
			<textarea name="content" rows="10" cols="80">${fn:replace(vo.content, newLineChar, "<br>")}</textarea>
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">옵션</td>
    <td width="700" bgcolor="#F2F2F2">
			썬팅<input type="checkbox" name="option1" value="option1">&nbsp; &nbsp;
			오토도어룩<input type="checkbox" name="option2" value="option2">&nbsp; &nbsp;
			파워핸들<input type="checkbox" name="option3" value="option3">&nbsp; &nbsp;
			에어컨<input type="checkbox" name="option4" value="option4">&nbsp; &nbsp;
			알루미늄힐<input type="checkbox" name="option5" value="option5">&nbsp; &nbsp;
			파워윈도우<input type="checkbox" name="option6" value="option6">&nbsp; &nbsp;
			썬루프<input type="checkbox" name="option7" value="option7">&nbsp; &nbsp; <br>
			에어백(운전석)<input type="checkbox" name="option8" value="option8">&nbsp; &nbsp;
			에어백(보조석)<input type="checkbox" name="option9" value="option9">&nbsp; &nbsp;
			에어백(사이드)<input type="checkbox" name="option10" value="option10">&nbsp; &nbsp;
			후방감지센서<input type="checkbox" name="option11" value="option11">&nbsp; &nbsp;
			후방카메라<input type="checkbox" name="option12" value="option12">&nbsp; &nbsp;
			스마트키<input type="checkbox" name="option13" value="option13">&nbsp; &nbsp;
			CD플레이어<input type="checkbox" name="option14" value="option14">&nbsp; &nbsp;<br>
			네비게이션<input type="checkbox" name="option15" value="option15">&nbsp; &nbsp;
			DMB<input type="checkbox" name="option16" value="option16">&nbsp; &nbsp;
			하이패스<input type="checkbox" name="option17" value="option17">&nbsp; &nbsp;
			블랙박스<input type="checkbox" name="option18" value="option18">&nbsp; &nbsp;
			시동버튼<input type="checkbox" name="option19" value="option19">&nbsp; &nbsp;
			</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품상태</td>
    <td width="700" bgcolor="#F2F2F2">
    	<c:choose>
    		<c:when test="${vo.carStatus=='판매중'}">
			<input type="radio" name="status" value="판매중" checked> 판매중
			<input type="radio" name="status" value="판매중지"> 판매중지
			<input type="radio" name="status" value="품절"> 품절
			</c:when>
			<c:when test="${vo.carStatus=='판매중지'}">
			<input type="radio" name="status" value="판매중" > 판매중
			<input type="radio" name="status" value="판매중지" checked> 판매중지
			<input type="radio" name="status" value="품절"> 품절
			</c:when>
			<c:when test="${vo.carStatus=='품절'}">
			<input type="radio" name="status" value="판매중"> 판매중
			<input type="radio" name="status" value="판매중지"> 판매중지
			<input type="radio" name="status" value="품절"checked> 품절
			</c:when>
		</c:choose>	
		</td>
	</tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">등록일</td>
		<td width="700"  bgcolor="#F2F2F2">
			<input type="text" name="regday1" value="${addDate1}" size="4" maxlength="4"> 년 &nbsp
			<input type="text" name="regday2" value="${addDate2}" size="2" maxlength="2"> 월 &nbsp
			<input type="text" name="regday3" value="${addDate3}" size="2" maxlength="2"> 일 &nbsp
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">이미지</td>
		<td width="700"  bgcolor="#F2F2F2">

			<table border="0" cellspacing="0" cellpadding="0" align="left">
				<tr>
					<td>
						<table width="390" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<input type='hidden' name='imagename1' value='s001_1.jpg'>
									&nbsp;<input type="checkbox" name="checkno1" value="1"> <b>이미지1</b>: s001_1.jpg
									<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="file" name="image1" size="20" value="찾아보기">
								</td>
							</tr> 
							<tr>
								<td>
									<input type='hidden' name='imagename2' value='s001_2.jpg'>
									&nbsp;<input type="checkbox" name="checkno2" value="1"checked> <b>이미지2</b>: s001_2.jpg
									<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="file" name="image2" size="20" value="찾아보기">
								</td>
							</tr> 
							<tr>
								<td>
									<input type='hidden' name='imagename3' value=''>
									&nbsp;<input type="checkbox" name="checkno3" value="1"> <b>이미지3</b>:
									<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="file" name="image3" size="20" value="찾아보기">
								</td>
							</tr> 
							<tr>
								<td><br>&nbsp;&nbsp;&nbsp;※ 삭제할 그림은 체크를 하세요.</td>
							</tr> 
				  	</table>
						<br><br><br><br><br>
						<table width="390" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td  valign="middle">&nbsp;
									<img src="/assets/images/product/s001_1.jpg" width="50" height="50" border="1" style='cursor:hand' onclick="imageView('/assets/images/product/s001_1.jpg')">&nbsp;
									<img src="/assets/images/product/s001_2.jpg" width="50" height="50" border="1" style='cursor:hand' onclick="imageView('/assets/images/product/s001_2.jpg')">&nbsp;
									<img src="/assets/images/product/nopic.jpg"  width="50" height="50" border="1" style='cursor:hand' onclick="imageView('/assets/images/product/nopic.jpg')">&nbsp;
								</td>
							</tr>				 
						</table>
					</td>
					<td>
						<td align="right" width="310"><img name="big" src="/assets/images/product/s001_1.jpg" width="300" height="300" border="1"></td>
					</td>
				</tr>
			</table>

		</td>
	</tr>
</table>

<br>
<table width="800" border="0" cellspacing="0" cellpadding="5">
	<tr> 
		<td align="center">
			<input type="submit" value="수정하기"> &nbsp;&nbsp
			<a href="product.jsp"><input type="button" value="이전화면"></a>
		</td>
	</tr>
</table>

</form>

</center>

</body>
</html>
