<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
        <title>Management Task</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>
                    <a id="title" href="${pageContext.request.contextPath}/index">
                        Management Task
                    </a>
                </h1>
            </div>
            <div id="content">
                ${param.content}
            </div>
            <div id="footer">
                <p style="color: white;">
                    by Naoki Isonami.
                </p>
            </div>
        </div>
    </body>
</html>