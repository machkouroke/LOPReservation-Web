<c:set var="content">
    <form method="post" action="actifReservateur" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>

    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Reservataire ayant une réservation en cours"/>
    <jsp:param name="instructions" value="Veuillez saisir l'id du reservataire"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
