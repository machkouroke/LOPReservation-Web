<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>LOP Reservation</title>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link href="css/style.css"
              rel="stylesheet">

    </head>
    <body>

        <div class="p-5  bg-light rounded-3 container-fluid p-0">
            <jsp:include page="Template/header.jsp">
                <jsp:param name="title" value="LOP Reservation"/>
            </jsp:include>
            <main>

                <div class="p-5 mb-4 bg-light rounded-3 container-fluid p-0">
                    <c:choose>
                        <c:when test="${empty sessionScope.user}">
                            <%@ include file="annexe/login.jsp" %>
                        </c:when>

                        <c:otherwise>
                            <%@ include file="annexe/menu.jsp" %>
                        </c:otherwise>

                    </c:choose>

                </div>
            </main>

        </div>
        <%@ include file="Template/footer.jsp" %>

        <%@ include file="Template/script.jsp" %>
    </body>
</html>
