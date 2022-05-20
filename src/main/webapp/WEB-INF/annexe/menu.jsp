<%--
  Created by IntelliJ IDEA.
  User: machk
  Date: 08/04/2022
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<div class="card p-4 bg-light mb-3 container" id=menu>
    <div class="d-flex flex-column  container">

        <c:forEach items="${ gridContent }" var="row">
            <div class="p-3 align-items-center row  row-menu">
                <c:forEach items="${ row }" var="item">
                    <jsp:include page="annexe/grid.jsp">
                        <jsp:param name="page" value="${item.get(0)}"/>
                        <jsp:param name="title" value="${item.get(1)}"/>
                        <jsp:param name="icon" value="${item.get(2)}"/>
                    </jsp:include>
                </c:forEach>
            </div>
        </c:forEach>

    </div>
</div>

