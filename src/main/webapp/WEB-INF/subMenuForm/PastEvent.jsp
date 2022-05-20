<c:set var="content">
    <form method="post" action="pastEvent" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>

    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Liste des évènements déja effectué"/>
    <jsp:param name="instructions" value=""/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
