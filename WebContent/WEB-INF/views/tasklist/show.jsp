<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/template.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>${task.id} details page</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>Task</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th>Create Time</th>
                            <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>Update Time</th>
                            <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>

                <p><a id="edit" href="${pageContext.request.contextPath}/edit?id=${task.id}">Edit This Task</a></p>
                <p><a href="${pageContext.request.contextPath}/index">Go To TaskList</a></p>
            </c:when>
            <c:otherwise>
                <h2>404 Error: The data you are looking for could not be found.</h2>
                <p><a href="${pageContext.request.contextPath}/index">Go To TaskList</a></p>
            </c:otherwise>
        </c:choose>

    </c:param>
</c:import>