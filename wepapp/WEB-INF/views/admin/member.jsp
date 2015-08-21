<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>쇼핑몰 관리자 홈페이지</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/assets/css/font.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="/assets/js/jquery/jquery-1.9.0.js"></script>
<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">

<script type="text/javascript">
function myFunction() {
    document.getElementById("click").style.fontColor = "#fff";
}

</script>
	<center>
		<br>
		<jsp:include page="/include/admin-menu.jsp" />
		<hr width='900' size='3'>
		<table width="800" border="0" cellspacing="0" cellpadding="0">
			<form name="form1" method="post" action="/admin/search">
				<tr height="40">
					<td width="200" valign="bottom">&nbsp 회원수 : <font
						color="#FF0000">${total}</font></td>
					<td width="200">&nbsp</td>
					<td width="350" align="right" valign="bottom"><select
						name="sel1" class="combo1">
							<option value="1">이름</option>
							<option value="2">아이디</option>
					</select> <input type="text" name="text1" size="15" value="">&nbsp</td>
					<td width="50" valign="bottom"><input type="submit" value="검색">&nbsp
					</td>
				</tr>
				<tr>
					<td height="5" colspan="4"></td>
				</tr>
			</form>
		</table>
		<table width="800" border="1" cellspacing="0" bordercolordark="white"
			bordercolorlight="black">
			<tr bgcolor="#CCCCCC" height="23">
				<td width="100" align="center">no</td>
				<td width="100" align="center">ID</td>
				<td width="100" align="center">이름</td>
				<td width="100" align="center">전화</td>
				<td width="100" align="center">핸드폰</td>
				<td width="200" align="center">E-Mail</td>
				<td width="100" align="center">회원구분</td>
				<td width="100" align="center">수정/삭제</td>
			</tr>
			<c:forEach var="vo" items="${list}" varStatus="status">
				<tr bgcolor="#F2F2F2" height="23">
					<td width="100" >&nbsp ${num -(status.index)}</td>
					<td width="100">&nbsp ${vo.id }</td>
					<td width="100">&nbsp ${vo.name }</td>
					<td width="100">&nbsp ${vo.phoneNumber1 }</td>
					<td width="100">&nbsp ${vo.phoneNumber2 }</td>
					<td width="200">&nbsp ${vo.email }</td>
					<td width="100" align="center">${vo.userStatus}</td>
					<td width="100" align="center"><a href="#">수정</a>/ <a href="#">삭제</a>
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
						<a href="?sel1=${param.sel1}&text1=${param.text1}&page=${i}"><font
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