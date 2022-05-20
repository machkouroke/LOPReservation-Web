<c:set var="content">
    <form method="post" action="delete" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>
        <div class="col-md-4">
            <label class="form-label" for="numEvent">Numéro Réservation à
                supprimer</label>
            <input name="numEvent" class="form-control" id="numEvent" required
                   type="number"/>
        </div>

        <div class="col-12">
            <button class="btn btn-primary" id="supprimer" type="submit">Supprimer
            </button>
        </div>
    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Supprimer un utilisateur"/>
    <jsp:param name="instructions" value="Veuillez saisir L'Id de l'évènement à supprimer"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
