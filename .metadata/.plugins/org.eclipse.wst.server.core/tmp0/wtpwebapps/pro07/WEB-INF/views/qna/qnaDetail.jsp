<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>묻고 답하기</title>
    <jsp:include page="../include/head.jsp" />
	<link rel="stylesheet" href="${path1 }/resource/datatables.min.css">
	<script src="${path1 }/resource/datatables.min.js"></script>
  </head>
  <body>
  <jsp:include page="../include/header.jsp" />
  <section class="section">
    <div class="container">
		<h2 class="title">질문 및 답변 상세 내용</h2>
		<table class="table">
			<tbody>
				<tr>
					<th>구분</th>
					<td>
					<c:if test="${qnaDetail.lev eq 0}">
						<span>질문</span>
					</c:if>	
					<c:if test="${qnaDetail.lev ne 0}">
						<span>답변</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>공개여부</th>
					<td>
					<c:if test='${qnaDetail.sec eq "Y" }'>
						<span>비공개</span>
					</c:if>	
					<c:if test='${qnaDetail.sec eq "N" }'>
						<span>공개</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<td>${qnaDetail.qno }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${qnaDetail.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${qnaDetail.content }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${qnaDetail.author }</td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td>${qnaDetail.regdate }</td>
				</tr>
				<tr>
					<th>읽은 횟수</th>
					<td>${qnaDetail.visited }</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="${path1 }/GetQnaListCtrl.do" class="button is-info">목록으로</a>
			<c:if test='${sid eq "admin" }'>
				<c:set var="lev" value="${qnaDetail.lev }"/>
				<c:if test="${qnaDetail.lev eq 0 }">
					<a href='aWrite.do?qno=${qnaDetail.qno }' class="button is-primary">답변 하기</a>
					<a href='UpdateQnaCtrl.do?qno=${qnaDetail.qno }' class="button is-info">글 수정</a>
					<a href='DeleteQnaCtrl.do?parno=${qnaDetail.qno }' class="button is-danger">글 삭제</a>
				</c:if>	
				<c:if test="${qnaDetail.lev eq 1 }">
					<a href='UpdateQnaCtrl.do?qno=${qnaDetail.qno }' class="button is-info">답글 수정</a>
					<a href='DeleteQnaCtrl.do?qno=${qnaDetail.qno }' class="button is-danger">답글 삭제</a>
				</c:if>	
			</c:if>	
			<c:if test="${sid eq qnaDetail.author }">
				<a href='UpdateQnaCtrl.do?qno=${qnaDetail.qno }' class="button is-info">글 수정</a>
				<a href='DeleteQnaCtrl.do?parno=${qnaDetail.qno }' class="button is-danger">글 삭제</a>
			</c:if>		
			<c:if test="${sid ne qnaDetail.author}">
				<p style="clear:both">글 작성자가 아닙니다.</p>
			</c:if>
			</div>
		</div>	
	</section>
  <jsp:include page="../include/footer.jsp"></jsp:include>
  </body>
</html>