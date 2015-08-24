<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<form method="post" action ="/admin/product_add">
<table width="800" border="1" cellspacing="0" cellpadding="3" bordercolordark="white" bordercolorlight="black">
	<tr height="23"> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품분류</td>
    <td width="700" bgcolor="#F2F2F2">
			<select name="menu">
				<option value="0" selected>상품분류를 선택하세요</option>
				<option value="국산">국산</option>
				<option value="수입">수입</option>
				<option value="sale">sale</option>
			</select>
			<select name="menu1">
				<option value="0" selected>상품분류를 선택하세요</option>
				<option value="현대">현대</option>
				<option value="기아">기아</option>
				<option value="삼성">삼성</option>
				<option value="대우">대우</option>
				<option value="쌍용">쌍용</option>
				
			</select>
		</td>
	</tr>
	<tr height="23"> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품코드</td>
		<td width="700" bgcolor="#F2F2F2">
			<input type="text" name="code" value="" size="20" maxlength="20">
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">상품명</td>
		<td width="700" bgcolor="#F2F2F2">
			<input type="text" name="name" value="" size="60" maxlength="60">
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">판매가</td>
		<td width="700" bgcolor="#F2F2F2">
			<input type="text" name="car_price" value="" size="12" maxlength="12"> 원
		</td>
	</tr>
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">색상</td>
		<td width="700" bgcolor="#F2F2F2">
			<input type="text" name="car_color" size="12">
		</td>
		
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">연식</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="make_year" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">연료</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="oil" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">변속기</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="gearBox" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">주행거리</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="maileage" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">배기량</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="cc" >
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">사고유무</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="radio" name="accident" value="yes" >yes
			<input type="radio" name="accident" value="no" >no
			</td>
	</tr>
	<tr>
	<td width="100" bgcolor="#CCCCCC" align="center">차량번호</td>
	<td width="700" bgcolor="#F2F2F2">
		<input type="text" name="car_number" >
			</td>
	</tr>
	
	<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">제품설명</td>
		<td width="700" bgcolor="#F2F2F2">
			<textarea name="content" rows="10" cols="80"></textarea>
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
			<input type="radio" name="status" value="판매중" checked> 판매중
			<input type="radio" name="status" value="판매중지"> 판매중지
			<input type="radio" name="status" value="품절"> 품절
		</td>
	</tr>
		<tr> 
		<td width="100" bgcolor="#CCCCCC" align="center">이미지</td>
		<td width="700" bgcolor="#F2F2F2">
			<div>
			<b>이미지1</b>: <input type="file" name="file1" size="30" value="찾아보기">&nbsp;&nbsp;<a href=""><img src="/assets/images/plus_botton.png"></a><br>
			</div>

			<div style="display:none">
			<b>이미지2</b>: <input type="file" name="file2" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>

			<div style="display:none">
			<b>이미지3</b>: <input type="file" name="file3" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>

			<div style="display:none">
			<b>이미지4</b>: <input type="file" name="file4" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지5</b>: <input type="file" name="file5" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div style="display:none">
			
			<div style="display:none">
			<b>이미지6</b>: <input type="file" name="file6" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지7</b>: <input type="file" name="file7" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지8</b>: <input type="file" name="file8" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지9</b>: <input type="file" name="file9" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지10</b>: <input type="file" name="file10" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지11</b>: <input type="file" name="file11" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지12</b>: <input type="file" name="file12" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지13</b>: <input type="file" name="file13" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지14</b>: <input type="file" name="file14" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div style="display:none">
			
			<div style="display:none">
			<b>이미지15</b>: <input type="file" name="file15" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지16</b>: <input type="file" name="file16" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지17</b>: <input type="file" name="file17" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지18</b>: <input type="file" name="file18" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지19</b>: <input type="file" name="file19" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
			<div style="display:none">
			<b>이미지20</b>: <input type="file" name="file20" size="30" value="찾아보기">&nbsp;&nbsp;<br>
			</div>
			
		</td>
	</tr>
</table>
<br>
<table width="800" border="0" cellspacing="0" cellpadding="7">
	<tr> 
		<td align="center">
			<input type="submit" value="등록하기"> &nbsp;&nbsp
			<a href="/admin/product"><input type="button" value="이전화면"></a>
		</td>
	</tr>
</table>
</form>

</center>
</body>
</html>
