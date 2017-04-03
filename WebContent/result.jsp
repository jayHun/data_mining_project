<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String kind = (String)request.getAttribute("KIND");
	String year = (String)request.getAttribute("YEAR");
	String hour = (String)request.getAttribute("HOUR");
	String inst = (String)request.getAttribute("INST");
	String isneg = (String)request.getAttribute("ISNEG");
   	String gender = (String)request.getAttribute("GENDER");
   	String age = (String)request.getAttribute("AGE");
   	String algo = (String)request.getAttribute("ALGO");
   	String happiness = (String)request.getAttribute("HAPPINESS");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="kor">

<style>
div.content{
  position: relative;
  margin-top: 50px;
  width: auto;
  height: auto;
  background-color: white;
  border: 7px double #008040;
  border-radius: 10px;
  float: left;
  text-align: left;
  padding-top: 50px;
}
</style>

	<head>
	<title>Happiness_result</title>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<link rel="stylesheet" type="text/css" href="asset/css/main.css">
		<link rel="stylesheet" type="text/css" href="asset/css/content.css">
	</head>
	
	<body>
		<aside class='left'>
		</aside>
		
		<div class='content'>
		<%
			if(algo.equals("ar")){%>
				&nbsp;사용한 알고리즘: Association-Rule(Apriori)<br><br>
				<table border='0'>
					<tr>
						<td>&nbsp;sns 종류</td>
						<td>: <strong><%=kind %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 기간</td>
						<td>: <strong><%=year %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 시간</td>
						<td>: <strong><%=hour %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 기기</td>
						<td>: <strong><%=inst %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;부러움 여부</td>
						<td>: <strong><%=isneg %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;성   별</td>
						<td>: <strong><%=gender %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;나   이</td>
						<td>: <strong><%=age %></strong></td>
					</tr>
				</table>
				<br><br>
				※ 적용되는 연관규칙<br/><br/><%
				if(year.equals("more 2Y") && hour.equals("1H") && gender.equals("male")){%>
					&nbsp;<strong>- 총 사용기간이 2년 이상이고 하루 평균 이용시간이 약 1시간, 성별이 남자일 경우 페이스북 사용자입니다.</strong><br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && happiness.equals("yes")){%>
					&nbsp;<strong>- 사용하는 sns가 페이스북이고 타인의 소식에 부러움을 느낀 적이 있으며 현재 삶에 대해 만족하는 사람은 20대입니다.</strong><br/><%
				}
				if(hour.equals("1H") && gender.equals("male") && age.equals("20s")){%>
					&nbsp;<strong>- 하루 평균 이용 시간이 약 1시간이고 성별이 남자이며 나이가 20대인 사람은 페이스북을 사용합니다.</strong><br/><%
				}
				if(year.equals("more 2Y") && isneg.equals("yes") && happiness.equals("yes")){%>
					&nbsp;<strong>- 총 사용기간이 2년 이상이고 타인의 소식에 부러움을 느낀적이 있으며 현재 삶에 대해 만족하는 사람은 20대입니다.</strong><br/><%
				}
				if(hour.equals("1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- 하루 평균 이용시간이 약 1시간이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 페이스북을 사용하는 사람입니다.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- 총 사용기간이 2년 이상이고 하루 평균 이용 시간이 약 1시간, 타인의 소식에 부러움을 느낀 적이 있는 사람은 페이스북을 사용합니다.</strong><br/><%
				}
				if(hour.equals("1H") && isneg.equals("yes") && age.equals("20s")){%>
					&nbsp;<strong>- 하루 평균 이용시간이 약 1시간이고, 타인의 소식에 부러움을 느낀 적이 있으며 20대인 사람은 페이스북을 사용합니다.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("more 1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- 총 사용기간이 2년 이상이고 하루 평균 이용 시간이 1시간 이상, 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H") && gender.equals("male") && age.equals("20s")){%>
					&nbsp;<strong>- 총 사용기간이 2년 이상이고 하루 평균 이용 시간이 약 1시간인 20대의 남성은 페이스북을 사용합니다.</strong><br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes")){%>
					&nbsp;<strong>- 페이스북을 사용하며 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.</strong><br/><%
				}
				if(year.equals("more 2Y") && isneg.equals("yes")){%>
					&nbsp;- 총 사용기간이 2년 이상이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && isneg.equals("yes")){%>
					&nbsp;- 페이스북을 총 2년 이상 사용하고 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("yes")){%>
					&nbsp;- 페이스북을 사용하고 타인의 소식에 부러움을 느낀 적이 있는 남성은 20대입니다.<br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H")){%>
					&nbsp;- 총 사용기간이 2년 이상이고 하루 평균 이용시간이 약 1시간인 사람은 페이스북 사용자입니다.<br/><%
				}
				if(year.equals("more 2Y") && gender.equals("male") && isneg.equals("yes")){%>
					&nbsp;- 총 사용기간이 2년 이상이고  타인의 소식에 부러움을 느낀 적이 있는 남성은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("yes") && year.equals("more 2Y")){%>
					&nbsp;- 페이스북을 총 2년 이상 사용하고 타인의 소식에 부러움을 느낀 적이 있는 남성은 20대입니다.<br/><%
				}
				if(hour.equals("1H") && gender.equals("male")){%>
					&nbsp;- 하루 평균 이용 시간이 약 1시간인 남성은 20대입니다.<br/><%
				}
				if(hour.equals("1H") && age.equals("20s") && year.equals("more 2Y")){%>
					&nbsp;- 총 사용 기간이 2년 이상, 하루 평균 이용시간이 약 1시간인 20대는 페이스북을 사용합니다.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && happiness.equals("no")){%>
					&nbsp;- 페이스북을 사용하고 타인의 소식에 부러움을 느낀 적이 있으며 현재 자신의 삶에 불만족스러운 사람은 20대입니다.<br/><%
				}
				if(happiness.equals("no") && isneg.equals("yes") && year.equals("more 2Y")){%>
					&nbsp;- 총 사용 기간이 2년 이상이고, 타인의 소식에 부러움을 느낀 적이 있으며 현재 자신의 삶에 불만족스러운 사람은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("no") && age.equals("20s")){%>
					&nbsp;- 페이스북을 사용하고, 타인의 소식에 부러움을 느낀 적이 없는 20대 남성은 sns를 2년 이상 사용한 사람입니다.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 하루 평균 이용 시간이 약 1시간이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 sns를 2년 이상 사용한 사람입니다.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 하루 평균 이용 시간이 약 1시간이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.<br/><%
				}
				if(isneg.equals("yes") && gender.equals("female")){%>
					&nbsp;- 타인의 소식에 부러움을 느낀 적이 있는 여성은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 페이스북을 사용하고 하루 평균 이용 시간이 약 1시간이며 타인의 소식에 부러움을 느낀 적이 있는 사람은 sns를 2년 이상 사용한 사람입니다.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 하루 평균 이용 시간이 약 1시간이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 페이스북을 2년 이상 사용한 사람입니다.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 페이스북을 사용하고 하루 평균 이용 시간이 약 1시간이며 타인의 소식에 부러움을 느낀 적이 있는 사람은 20대입니다.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- 하루 평균 이용 시간이 약 1시간이고 타인의 소식에 부러움을 느낀 적이 있는 사람은 페이스북을 사용하는 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && isneg.equals("yes") && happiness.equals("no")){%>
					&nbsp;- 페이스북을 2년 이상 사용하고 타인의 소식에 부러움을 느낀 적이 있으며 현재 자신의 삶에 불만족스러운 사람은 20대입니다.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && happiness.equals("no")){%>
					&nbsp;- 페이스북을 2년 이상 사용하고 현재 자신의 삶에 불만족스러운 사람은 20대입니다.<br/><%
				}
			}
			else{%>
			
			<br/>
			&nbsp;사용한 알고리즘:
			<% if(algo.equals("or")){%> One-Rule<br/> <%}else if(algo.equals("nv")){%> Naive-Baysian<br/>
			<%} else{%> Decision-Tree<br/><%} %>
			&nbsp;정확도:
			<% if(algo.equals("or")){%> 47.27%<br/> <%}else if(algo.equals("nv")){%> 50.09%<br/>
			<%} else{%> 56.36%<br/><%} %>
			<br/>
			<table border='0'>
					<tr>
						<td>&nbsp;sns 종류</td>
						<td>: <strong><%=kind %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 기간</td>
						<td>: <strong><%=year %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 시간</td>
						<td>: <strong><%=hour %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;사용 기기</td>
						<td>: <strong><%=inst %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;부러움 여부</td>
						<td>: <strong><%=isneg %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;성   별</td>
						<td>: <strong><%=gender %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;나   이</td>
						<td>: <strong><%=age %></strong></td>
					</tr>
				</table><br><br>
			&nbsp;당신은 현재 자신의 삶에
			<%if(happiness.equals("yes")){ %> 
			<strong><font color='red'>만족</font></strong><%}else%><strong><font color='red'>불만족</font></strong>
			하실 것으로 예상됩니다.<%} %>
			<br><br>
			<align right><a href="main.html"><input type="button" value="홈으로"></a>&nbsp;&nbsp;</align><br>
			<!-- <button onClick="window.location='wnom.jsp';" value='속성값 선택'>속성값 선택</button> -->
	  	</div>
	  
	  	<aside class='right'>
	  	</aside>
	  
	  	<footer>
	  		Data Mining <br>
	  		Catholic Univ.
	  	</footer>
  </body>
</html>