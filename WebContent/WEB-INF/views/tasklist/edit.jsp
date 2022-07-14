<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/template.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>Task Edit page for ${task.id}</h2>

                <form method="POST" action="${pageContext.request.contextPath}/update">
                    <c:import url="_form.jsp" />
                </form>

                <p><a id="delete" href="#" onclick="confirmDestroy();">Delete This Task</a></p>
                <form method="POST" action="${pageContext.request.contextPath}/destroy">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                    function confirmDestroy() {
                        if(confirm("Destroy This Task?")) {
                            document.forms[1].submit();
                        }
                    }
                </script>
                <p><a href="${pageContext.request.contextPath}/index">Go To My TaskList</a></p>
            </c:when>
            <c:otherwise>
                <h2>404 Error: The data you are looking for could not be found.</h2>
                <p><a href="${pageContext.request.contextPath}/index">Go To TaskList</a></p>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>