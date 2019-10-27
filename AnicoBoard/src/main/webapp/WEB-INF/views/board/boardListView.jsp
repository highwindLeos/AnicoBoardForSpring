<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Retro Board</title>
	</head>
<body>
<jsp:include page="../main/head.jsp" />
<c:if test="${not empty bDeleteResult }">
	<script>swal('${bDeleteResult}', '', 'success');</script>
</c:if>
<c:if test="${not empty bWriteResult }">
	<script>swal('${bWriteResult}', '', 'success');</script>
</c:if>
<c:if test="${not empty replyResult }">
	<script>swal('${replyResult}', '', 'success');</script>
</c:if>
<div id="wrap">
	<table id="board">
		<tr>
			<th>글번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>제목</th>
			<th>조회수</th>
			<th>좋아요 수</th>
			<th>작성지IP</th>
		</tr>
		<c:if test="${totalCnt eq 0 }">
		<tr>
			<td><h3>표시할 글이 없습니다.</h3></td>
		</tr>
		</c:if>
		<c:if test="${totalCnt != 0 }">
			<c:forEach var="boardContentList" items="${list }">
			<tr>
				<td>${boardContentList.bNum }</td>
				<td>${boardContentList.mId }</td>
				<td><a href="${conPath }/profileView.do?mId=${boardContentList.mId }">${boardContentList.mName }</a></td>
				<td>
					<c:forEach var="i" begin="1" end="${boardContentList.bLevel }" >
						 <c:if test="${i == boardContentList.bLevel }">
						 	<i class="fas fa-chevron-circle-right"></i>
						 </c:if>
						 <c:if test="${i != boardContentList.bLevel }">
						 	&nbsp;&nbsp;
						 </c:if>
					</c:forEach>
					<a class="colorDarkGray" href="boardContentView.do?bNum=${boardContentList.bNum }&pageNum=${currentPage }">${boardContentList.bTitle }</a>
				</td>
				<td>${boardContentList.bCnt }</td>
				<td>${boardContentList.bLike }</td>
				<td>${boardContentList.bIp }</td>
			</tr>
			</c:forEach>
		</c:if>
		<c:if test="${not empty loginOk }">
			<tr>
				<td colspan="7">
					<input type="button" value="글쓰기" onclick="location.href = 'boardWriteForm.do'" >
				</td>
			</tr>
		</c:if>
	</table>
	<div id="pageBoard" class="center">
		<%-- 이전 1 2 3 4 5 6 7 8 9 10 다음 --%>
		<c:if test="${startPage > BLOCKSIZE }">
			<a href="${conPath }/boardListView.do?pageNum=${startPage - 1 }"><span class="pagingOut">이전</span></a>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<span class="pagingOut boldLightBlue"><b>${ i }</b></span>
			</c:if>
			<c:if test="${i != currentPage }">
				<a href="${conPath }/boardListView.do?pageNum=${i}"><span class="pagingOut"><b>${ i }</b></span></a>
			</c:if>
		</c:forEach>
		<c:if test="${endPage < pageCnt  }">
			<a href="${conPath }/boardListView.do?pageNum=${endPage + 1 }"><span class="pagingOut">다음</span></a>
		</c:if>
	</div>
</div>
<jsp:include page="../main/footer.jsp" />
</body>
</html>