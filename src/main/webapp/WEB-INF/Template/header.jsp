<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<header>
    <nav class="navbar navbar-light bg-light">
        <div class="row container-fluid">
            <div class="col-12 col-md container justify-content-center">
                <h3 class="display-1 text-center fw-bold">${param.title}</h3>
            </div>
            <c:if test="${!empty sessionScope.user}">
                <div class="col-12 col-md-3 container">
                    <button onclick="location.href='index?logout=true';" class="w-100 btn btn-primary" id="logout">
                        Déconnexion
                    </button>
                </div>
            </c:if>
        </div>

    </nav>
</header>