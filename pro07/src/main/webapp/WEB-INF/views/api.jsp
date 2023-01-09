<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>API TEST</title>
</head>
<body>
	<a href="test1">테스트1</a><br>
	<a href="test2/admin/1234">테스트2</a><br>
	<a href="test3/admin">테스트3</a><br>
	<a href="test4/admin/1234">테스트4</a><br>
	<a href="test5/admin">테스트5</a><br>
	<a href="list">목록</a><br>
	<a href="user/admin">테스트7</a><br>
	<hr>
	<h2>POST 방식</h2>
	<form name="addSample" action="add" method="post">
		<input type="text" id="id" name="id" placeholder="id 입력"><br>
		<input type="password" id="pw" name="pw" placeholder="pw 입력"><br><br>
		<input type="submit" value="등록">
	</form>
	<hr>
	<h2>PUT 방식</h2>
	<form name="updateSample" action="update" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="text" id="id" name="id" value="admin"><br>
		<input type="password" id="pw" name="pw" value="1234"><br><br>
		<input type="submit" value="수정">
	</form>
	<hr>
	<h2>DELETE 방식</h2>
	<form action="delete" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="text" id="id" name="id" value="admin"><br><br>
		<input type="submit" value="삭제">
	</form>
</body>
</html>