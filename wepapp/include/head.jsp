<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table width="959" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr> 
		<td>
			<!--  상단 왼쪽 로고  -------------------------------------------->
			<table border="0" cellspacing="0" cellpadding="0" width="182">
				<tr>
					<td><a href="index.jsp"><img src="/assets/images/top_logo.gif" width="182" height="40" border="0"></a></td>
				</tr>
			</table>
		</td>
		<td align="right" valign="bottom">
			<!--  상단메뉴 시작 (main_topmemnu.jsp) : Home/로그인/회원가입/장바구니/주문배송조회/즐겨찾기추가  ---->	
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><a href="/"><img src="/assets/images/top_menu01.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
				<c:choose>
				<c:when test="${empty authUser}">
					<td><a href="/user/login"><img src="/assets/images/top_menu02.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
					<td><a href="/user/agree"><img src="/assets/images/top_menu03.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
				</c:when>
				<c:otherwise>
					<td><a href="/user/logout"><img src="/assets/images/top_menu02_1.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
					<td><a href="/user/modifyform"><img src="/assets/images/top_menu03_1.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
				
				</c:otherwise>
				</c:choose>
				
					<td><a href="/cart"><img src="/assets/images/top_menu05.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif" width="11"></td>
					<td><a href="/order/jumun"><img src="/assets/images/top_menu06.gif" border="0"></a></td>
					<td><img src="/assets/images/top_menu_line.gif"width="11"></td>
					<td><img src="/assets/images/top_menu08.gif" style="cursor:hand"></td>
				</tr>
			</table>
			<!--  상단메뉴 끝 (main_topmemnu.php)  ---------->	
		</td>
	</tr>
</table>

<!--  상단 메인 이미지 --------------------------------------------------->
<table width="959" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td><img src="/assets/images/main_image0.jpg" width="182" height="175"></td>
	  <td><img src="/assets/images/main_image1.jpg" width="777" height="175"></td>
	</tr>
</table>