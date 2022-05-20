<c:set var="content">
    <form method="post" action="evtInBloc" class="row g-3 " id="post-form">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">
                <c:out value="${error}"/>
            </div>
        </c:if>
        <%@ include file="../Template/dataPrint.jsp" %>
        <div class="col-md-4">
            <label class="form-label" for="lettreBloc">Lettre du Bloc</label>
            <input name="lettreBloc" class="form-control" id="lettreBloc" required
                   type="text"/>
        </div>

        <div class="col-12">
            <button class="btn btn-primary" id="supprimer" type="submit">Voir
            </button>
        </div>
    </form>
</c:set>

<jsp:include page="../Template/subMenu.jsp">
    <jsp:param name="title" value="Evènement dans un bloc données"/>
    <jsp:param name="instructions" value="Veuillez saisir L'Id du Bloc"/>
    <jsp:param name="content" value="${content}"/>
</jsp:include>
