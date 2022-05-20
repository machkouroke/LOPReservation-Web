<c:set var="content">
    <form method="post" action="add" class="row g-3 " id="addForm">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <c:if test="${!empty success}">
            <div class="d-flex flex-column alert alert-success" role="alert">
                <p><c:out value="${success}"/></p>
                <p><a class="btn btn-primary" href="${pageContext.request.contextPath}/delete">Supprimer une reservation</a></p>
            </div>
        </c:if>
        <div class="col-12 col-md-4">
            <label class="form-label" for="numSalle">Numéro de la salle</label>
            <select id="numSalle" name="numSalle" class="form-select" aria-label="Default select example" required>
                <option value="1" selected>1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </div>
        <div class="col-12 col-md-4">
            <label class="form-label" for="numBloc">Numéro du bloc de la salle</label>
            <select id="numBloc" name="numBloc" class="form-select" aria-label="Default select example" required>
                <option value="A" selected>A</option>
                <option value="B">B</option>
                <option value="C">C</option>
                <option value="D">D</option>
            </select>
        </div>
        <div class="col-12 col-md-4">
            <label class="form-label" for="idReservataire">ID du réservataire</label>
            <input name="idReservataire" class="form-control" id="idReservataire"
                   required
                   type="number"/>
        </div>
        <div class="col-12 col-md-6">
            <label class="form-label" for="eventName">Quelle est le nom de
                l'évènement à ajouter</label>
            <input name="eventName" class="form-control" id="eventName"
                   required
                   type="text"/>
        </div>
        <div class="col-12 col-md-6 ">
            <label class="form-label" for="eventDate">Date
                l'évènement</label>
            <input name="eventDate" class="form-control" id="eventDate"
                   required
                   type="date"/>
        </div>
        <div class="col-12 justify-content-center">
            <button class="btn btn-primary" id="ajouter" type="submit">Ajouter
            </button>
        </div>
    </form>
</c:set>
<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Ajouter un utilisateur"/>
    <jsp:param name="instructions" value="Veuillez saisir les informations de la Réservations"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>