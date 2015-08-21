<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table width="959" height="25" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr><td height="1" colspan="5" bgcolor="#F7F7F7"></td></tr>
	<tr bgcolor="#F0F0F0">
		<td width="181" align="center"><font color="#666666">&nbsp <b>환영합니다!&nbsp  ${authUser.name}&nbsp;고객님.</b></font></td>
		<td style="font-size:9pt;color:#666666;font-family:돋움;padding-left:5px;"></td>
		<td align="right" style="font-size:9pt;color:#666666;font-family:돋움;"><b>상품검색 ▶&nbsp</b></td>
		<!-- form1 시작 -->
		<form name="form1" method="get" action="product_search.jsp">
		<td width="135">
			<input type="text" name="findtext" maxlength="40" size="20" class="cmfont1">&nbsp;
		</td>
		<td width="60"><input type="image" src="/assets/images/i_search1.gif"></td>
		</form>
		<!-- form1 끝 -->
	</tr>
	<tr><td height="1" colspan="5" bgcolor="#E5E5E5"></td></tr>
</table>