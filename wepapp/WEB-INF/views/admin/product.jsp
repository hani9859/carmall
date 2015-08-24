<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<form name="form1" method="post" action="product_search">
<table width="800" border="0" cellspacing="0" cellpadding="0">
	<tr height="40">
		<td align="left"  width="150" valign="bottom">&nbsp 제품수 : <font color="#FF0000">${total}</font></td>
		<td align="right" width="550" valign="bottom">
			<select name="carStatus">
				<option value="판매중" selected>판매중</option>
				<option value="판매중지" >판매중지</option>
				<option value="품절" >품절</option>
			</select> &nbsp 
			<select name="country_name">
				<option value="">분류선택</option>
				<option value="국산" >국산</option>
				<option value="수입" >수입</option>
				<option value="sale" >Sale</option>
			</select> &nbsp 
			<select name="brand_name">
				<option value="">분류선택</option>
				<option value="현대" >현대</option>
				<option value="기아" >기아</option>
				<option value="삼성" >삼성</option>
				<option value="대우" >대우</option>
				<option value="쌍용" >쌍용</option>
			</select> &nbsp 
			<select name="sel">
				<option value="name" selected>제품이름</option>
				<option value="product_code" >제품코드번호</option>
			</select>
			<input type="text" name="text1" size="10" value="">&nbsp
		</td>
		<td align="left" width="120" valign="bottom">
			<input type="submit" value="검색">
			&nbsp;
			<a href="/admin/product_new"><input type="button" value="새상품"></a>
		</td>
	</tr>
	<tr><td height="5"></td></tr>
</table>
</form>

<table width="800" border="1" cellspacing="0" bordercolordark="white" bordercolorlight="black">
	<tr bgcolor="#CCCCCC" height="23"> 
		<td width="100" align="center">번호</td>
		<td width="100" align="center">제품분류</td>
		<td width="100" align="center">제품코드</td>
		<td width="280" align="center">제품명</td>
		<td width="70"  align="center">판매가</td>
		<td width="50"  align="center">상태</td>
		<td width="80"  align="center">수정/삭제</td>
	</tr>
	<c:forEach var="vo" items="${list}" varStatus="status">
	<tr bgcolor="#F2F2F2" height="23">	
		<td width="100" >&nbsp ${num -(status.index)}</td>
		<td width="100">&nbsp ${vo.brand_name}</td>
		<td width="100">&nbsp ${vo.product_code }</td>
		<td width="280">&nbsp ${vo.name}</td>	
		<td width="70"  align="right">${vo.car_price} &nbsp</td>	
		<td width="50"  align="center">${vo.carStatus}</td>	
		<td width="80"  align="center">
			<a href="/admin/product_edit?car_no=${vo.car_no}">수정</a>/
			<a href="#">삭제</a>
		</td>
	</tr>
	</c:forEach>
	
</table>

<br>
<table width="800" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="30" class="cmfont" align="center"><c:if
						test="${param.page>1}">
						<a href="?page=${param.page-1}"><img
							src="/assets/images/admin/i_prev.gif" align="absmiddle"
							border="0"></a>
					</c:if> <c:forEach var="i" begin="1" end="${pageBlock}">
						<a href="?sel=${param.sel1}&text1=${param.text1}&carStatus=${param.carStatus}&country_name=${param.country_name}&brand_name=${param.brand_name}&sel=name&text1=${param.text1}&page=${i}"><font
							color="#7C7A77">[${i}]</font></a>&nbsp;
			</c:forEach> <c:if test="${param.page<pageBlock}">
						<a href="?page=${param.page+1}"><img
							src="/assets/images/admin/i_next.gif" align="absmiddle"
							border="0"></a>
					</c:if></td>
	</tr>
</table>

</center>

</body>
</html>