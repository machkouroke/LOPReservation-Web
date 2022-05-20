<c:set var="content">
    <form method="post" action="listeSalleReservataire" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>
        <div class="col-md-4">
            <label class="form-label" for="numReservataire">Id du reservataire</label>
            <input name="numReservataire" class="form-control" id="numReservataire" required
                   type="number"/>
        </div>

        <div class="col-12">
            <button class="btn btn-primary" id="supprimer" type="submit">Voir
            </button>
        </div>
    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Liste des Salles reservé par un utilisateur"/>
    <jsp:param name="instructions" value="Veuillez saisir L'Id du réservataire"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
