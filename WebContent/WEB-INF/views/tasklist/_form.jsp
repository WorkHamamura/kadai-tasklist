<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        There is an error in your input.<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>
    </div>
</c:if>

<input type="text" name="content" id="content" placeholder="Enter new task" value="${task.content}" required />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">Register</button>