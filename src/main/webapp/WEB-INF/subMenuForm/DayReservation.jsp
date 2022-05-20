<c:set var="content">
    <form method="post" action="dayReservation" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>
        <div class="col-md-4">
            <label class="form-label" for="numReservataire">Jour de l& réservation</label>
            <input name="numReservataire" class="form-control" id="numReservataire" required
                   type="date"/>
        </div>

        <div class="col-12">
            <button class="btn btn-primary" id="supprimer" type="submit">Voir
            </button>
        </div>
    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Reservation d'une journée donnée"/>
    <jsp:param name="instructions" value="Veuillez saisir Le jour de la réservation"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
