<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>온라인 커뮤니티 - 왓츠</title>
<link rel="stylesheet" href="/CSS/Final_Project.css">
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="header_logo_box"><jsp:include page="/layout/header1.jsp" flush="false" /></div>
			<div id="header_search_box"><jsp:include page="/layout/header2.jsp" flush="false" /></div>
		</div>
		
		
		<div id="sidebar">
			<div id ="sidebar_login">
			<jsp:include page="/layout/sidebar1.jsp" flush="false" />
			</div>
			<div id ="sidebar_menu">
			<jsp:include page="/layout/sidebar2.jsp" flush="false" />
			</div>
		</div>
		
		
		<div id="content">
			<div id="content_index1">
					<table class="content_index_table">
						<caption><a href="/Noticelist?write=notice">+더보기</a></caption>
						<tr >
							<th>공지사항</th>
						</tr>
							<c:forEach var="boardlistitem" items="${boardlist}" varStatus="status" end="12">
						<tr>
							<td><c:out value="${status.count}"/></td>
							<td><a href="/boardread?post_code=${boardlistitem.POST_CODE}"><c:out value="${boardlistitem.TITLE}"/></a></td>
							<td><c:out value="${boardlistitem.NICKNAME}"/></td>
							<td><c:out value="${boardlistitem.VIEWS_CUT}"/></td>
							<td><c:out value="${boardlistitem.REPORTING_DATE}"/></td>
						</tr>
					</c:forEach>
					</table>
			</div>
			<div id="content_index2">
					<table class="content_index_table" >
						<caption><a href="/Noticelist?write=free">+더보기</a></caption>
						<tr >
							<th>자유게시판</th>
						</tr>
							<c:forEach var="boardlistitem" items="${boardlist}" varStatus="status" end="12">
						<tr>
							<td><c:out value="${status.count}"/></td>
							<td><a href="/boardread?post_code=${boardlistitem.POST_CODE}"><c:out value="${boardlistitem.TITLE}"/></a></td>
							<td><c:out value="${boardlistitem.NICKNAME}"/></td>
							<td><c:out value="${boardlistitem.VIEWS_CUT}"/></td>
							<td><c:out value="${boardlistitem.REPORTING_DATE}"/></td>
						</tr>
					</c:forEach>
					</table>
			</div>
			<div id="content_index3">
					<table class="content_index_table">
						<caption><a href="/Noticelist?write=humor">+더보기</a></caption>
						<tr >
							<th>유머게시판</th>
						</tr>
							<c:forEach var="boardlistitem" items="${boardlist}" varStatus="status" end="12">
						<tr>
							<td><c:out value="${status.count}"/></td>
							<td><a href="/boardread?post_code=${boardlistitem.POST_CODE}"><c:out value="${boardlistitem.TITLE}"/></a></td>
							<td><c:out value="${boardlistitem.NICKNAME}"/></td>
							<td><c:out value="${boardlistitem.VIEWS_CUT}"/></td>
							<td><c:out value="${boardlistitem.REPORTING_DATE}"/></td>
						</tr>
					</c:forEach>
					</table>
			</div>
			<div id="content_index4">
					<table class="content_index_table">
						<caption><a href="Board_View.jsp">+더보기</a></caption>
						<tr >
							<th>제목</th>
						</tr>
					</table>
			</div>
		</div>

	</div>
</body>
</html>