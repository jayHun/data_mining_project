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
				&nbsp;������ �˰�����: Association-Rule(Apriori)<br><br>
				<table border='0'>
					<tr>
						<td>&nbsp;sns ����</td>
						<td>: <strong><%=kind %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� �Ⱓ</td>
						<td>: <strong><%=year %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� �ð�</td>
						<td>: <strong><%=hour %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� ����</td>
						<td>: <strong><%=inst %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;�η��� ����</td>
						<td>: <strong><%=isneg %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;��   ��</td>
						<td>: <strong><%=gender %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;��   ��</td>
						<td>: <strong><%=age %></strong></td>
					</tr>
				</table>
				<br><br>
				�� �����Ǵ� ������Ģ<br/><br/><%
				if(year.equals("more 2Y") && hour.equals("1H") && gender.equals("male")){%>
					&nbsp;<strong>- �� �����Ⱓ�� 2�� �̻��̰� �Ϸ� ���� �̿��ð��� �� 1�ð�, ������ ������ ���� ���̽��� �������Դϴ�.</strong><br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && happiness.equals("yes")){%>
					&nbsp;<strong>- �����ϴ� sns�� ���̽����̰� Ÿ���� �ҽĿ� �η����� ���� ���� ������ ���� � ���� �����ϴ� ������ 20���Դϴ�.</strong><br/><%
				}
				if(hour.equals("1H") && gender.equals("male") && age.equals("20s")){%>
					&nbsp;<strong>- �Ϸ� ���� �̿� �ð��� �� 1�ð��̰� ������ �����̸� ���̰� 20���� ������ ���̽����� �����մϴ�.</strong><br/><%
				}
				if(year.equals("more 2Y") && isneg.equals("yes") && happiness.equals("yes")){%>
					&nbsp;<strong>- �� �����Ⱓ�� 2�� �̻��̰� Ÿ���� �ҽĿ� �η����� �������� ������ ���� � ���� �����ϴ� ������ 20���Դϴ�.</strong><br/><%
				}
				if(hour.equals("1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- �Ϸ� ���� �̿��ð��� �� 1�ð��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ ���̽����� �����ϴ� �����Դϴ�.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- �� �����Ⱓ�� 2�� �̻��̰� �Ϸ� ���� �̿� �ð��� �� 1�ð�, Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ ���̽����� �����մϴ�.</strong><br/><%
				}
				if(hour.equals("1H") && isneg.equals("yes") && age.equals("20s")){%>
					&nbsp;<strong>- �Ϸ� ���� �̿��ð��� �� 1�ð��̰�, Ÿ���� �ҽĿ� �η����� ���� ���� ������ 20���� ������ ���̽����� �����մϴ�.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("more 1H") && isneg.equals("yes")){%>
					&nbsp;<strong>- �� �����Ⱓ�� 2�� �̻��̰� �Ϸ� ���� �̿� �ð��� 1�ð� �̻�, Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.</strong><br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H") && gender.equals("male") && age.equals("20s")){%>
					&nbsp;<strong>- �� �����Ⱓ�� 2�� �̻��̰� �Ϸ� ���� �̿� �ð��� �� 1�ð��� 20���� ������ ���̽����� �����մϴ�.</strong><br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes")){%>
					&nbsp;<strong>- ���̽����� �����ϸ� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.</strong><br/><%
				}
				if(year.equals("more 2Y") && isneg.equals("yes")){%>
					&nbsp;- �� �����Ⱓ�� 2�� �̻��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && isneg.equals("yes")){%>
					&nbsp;- ���̽����� �� 2�� �̻� �����ϰ� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("yes")){%>
					&nbsp;- ���̽����� �����ϰ� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(year.equals("more 2Y") && hour.equals("1H")){%>
					&nbsp;- �� �����Ⱓ�� 2�� �̻��̰� �Ϸ� ���� �̿��ð��� �� 1�ð��� ������ ���̽��� �������Դϴ�.<br/><%
				}
				if(year.equals("more 2Y") && gender.equals("male") && isneg.equals("yes")){%>
					&nbsp;- �� �����Ⱓ�� 2�� �̻��̰�  Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("yes") && year.equals("more 2Y")){%>
					&nbsp;- ���̽����� �� 2�� �̻� �����ϰ� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(hour.equals("1H") && gender.equals("male")){%>
					&nbsp;- �Ϸ� ���� �̿� �ð��� �� 1�ð��� ������ 20���Դϴ�.<br/><%
				}
				if(hour.equals("1H") && age.equals("20s") && year.equals("more 2Y")){%>
					&nbsp;- �� ���� �Ⱓ�� 2�� �̻�, �Ϸ� ���� �̿��ð��� �� 1�ð��� 20���� ���̽����� �����մϴ�.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && happiness.equals("no")){%>
					&nbsp;- ���̽����� �����ϰ� Ÿ���� �ҽĿ� �η����� ���� ���� ������ ���� �ڽ��� � �Ҹ��������� ������ 20���Դϴ�.<br/><%
				}
				if(happiness.equals("no") && isneg.equals("yes") && year.equals("more 2Y")){%>
					&nbsp;- �� ���� �Ⱓ�� 2�� �̻��̰�, Ÿ���� �ҽĿ� �η����� ���� ���� ������ ���� �ڽ��� � �Ҹ��������� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && gender.equals("male") && isneg.equals("no") && age.equals("20s")){%>
					&nbsp;- ���̽����� �����ϰ�, Ÿ���� �ҽĿ� �η����� ���� ���� ���� 20�� ������ sns�� 2�� �̻� ������ �����Դϴ�.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- �Ϸ� ���� �̿� �ð��� �� 1�ð��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ sns�� 2�� �̻� ������ �����Դϴ�.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- �Ϸ� ���� �̿� �ð��� �� 1�ð��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(isneg.equals("yes") && gender.equals("female")){%>
					&nbsp;- Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- ���̽����� �����ϰ� �Ϸ� ���� �̿� �ð��� �� 1�ð��̸� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ sns�� 2�� �̻� ������ �����Դϴ�.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- �Ϸ� ���� �̿� �ð��� �� 1�ð��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ ���̽����� 2�� �̻� ������ �����Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- ���̽����� �����ϰ� �Ϸ� ���� �̿� �ð��� �� 1�ð��̸� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ 20���Դϴ�.<br/><%
				}
				if(isneg.equals("yes") && hour.equals("1H")){%>
					&nbsp;- �Ϸ� ���� �̿� �ð��� �� 1�ð��̰� Ÿ���� �ҽĿ� �η����� ���� ���� �ִ� ������ ���̽����� �����ϴ� 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && isneg.equals("yes") && happiness.equals("no")){%>
					&nbsp;- ���̽����� 2�� �̻� �����ϰ� Ÿ���� �ҽĿ� �η����� ���� ���� ������ ���� �ڽ��� � �Ҹ��������� ������ 20���Դϴ�.<br/><%
				}
				if(kind.equals("facebook") && year.equals("more 2Y") && happiness.equals("no")){%>
					&nbsp;- ���̽����� 2�� �̻� �����ϰ� ���� �ڽ��� � �Ҹ��������� ������ 20���Դϴ�.<br/><%
				}
			}
			else{%>

			<br/>
			&nbsp;������ �˰�����:
			<% if(algo.equals("or")){%> One-Rule<br/> <%}else if(algo.equals("nv")){%> Naive-Baysian<br/>
			<%} else{%> Decision-Tree<br/><%} %>
			&nbsp;��Ȯ��:
			<% if(algo.equals("or")){%> 47.27%<br/> <%}else if(algo.equals("nv")){%> 50.09%<br/>
			<%} else{%> 56.36%<br/><%} %>
			<br/>
			<table border='0'>
					<tr>
						<td>&nbsp;sns ����</td>
						<td>: <strong><%=kind %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� �Ⱓ</td>
						<td>: <strong><%=year %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� �ð�</td>
						<td>: <strong><%=hour %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;���� ����</td>
						<td>: <strong><%=inst %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;�η��� ����</td>
						<td>: <strong><%=isneg %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;��   ��</td>
						<td>: <strong><%=gender %></strong></td>
					</tr>
					<tr>
						<td>&nbsp;��   ��</td>
						<td>: <strong><%=age %></strong></td>
					</tr>
				</table><br><br>
			&nbsp;������ ���� �ڽ��� �
			<%if(happiness.equals("yes")){ %>
			<strong><font color='red'>����</font></strong><%}else%><strong><font color='red'>�Ҹ���</font></strong>
			�Ͻ� ������ �����˴ϴ�.<%} %>
			<br><br>
			<align right><a href="main.html"><input type="button" value="Ȩ����"></a>&nbsp;&nbsp;</align><br>
			<!-- <button onClick="window.location='wnom.jsp';" value='�Ӽ��� ����'>�Ӽ��� ����</button> -->
	  	</div>

	  	<aside class='right'>
	  	</aside>

	  	<footer>
	  		Data Mining <br>
	  		Catholic Univ.
	  	</footer>
  </body>
</html>
