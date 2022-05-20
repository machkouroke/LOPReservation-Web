<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>LOP Reservation</title>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link href="css/style.css"
              rel="stylesheet">
    </head>
    <body>
        <div class="p-5 mb-4 bg-light rounded-3 container-fluid p-0">

            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light ">
                    <div class="nav-item m-5">
                        <button onclick="location.href='index';" class="btn btn-primary" id="home">
                            Accueil
                        </button>
                    </div>
                    <div class="container-fluid justify-content-center">
                        <h3 class="display-1 text-center fw-bold"><c:out value="${param.title}"/></h3>
                    </div>
                    <div class="nav-item">
                        <button onclick="location.href='index?logout=true';" class="btn btn-primary" id="logout">
                            Déconnexion
                        </button>
                    </div>

                </nav>
            </header>
            <main>
                <div class="p-5 mb-4 bg-light rounded-3 container-fluid p-0">
                    <div class="d-flex flex-column p-0 bg-light mb-3 container-fluid" id=reviews>
                        <h2 class="display-5 text-center pt-5 px-5 fw-bold"><c:out value="${param.instructions}"/></h2>
                        <div class="row m-3">
                            <div class="card container-fluid px-5 card p-2">
                                <div class="card-body d-flex flex-column
							 justify-content-between ">
                                    <c:set var="errorMessage">
                                        <form class="row g-3 ">
                                            <div class="alert alert-danger" role="alert">
                                                <c:out value="Veuillez vous connecter"/>
                                            </div>
                                        </form>
                                    </c:set>
                                    <c:choose>

                                        <c:when test="${empty sessionScope.user}" >
                                            <c:out value="${errorMessage}" escapeXml="false"/>
                                        </c:when>
                                        <c:otherwise>
                                            <c:out value="${param.content}" escapeXml="false"/>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </main>
            <%@ include file="footer.jsp" %>
            <%@ include file="script.jsp" %>

        </div>

    </body>
</html>