<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover rounded-4">
        <caption style="display: none;">Table de données</caption>
        <thead class="thead-dark">
            <c:forEach items="${data.get(0)}" var="title">
                <th>
                    <c:out value="${title}"/>
                </th>
            </c:forEach>
        </thead>
        <tbody>
            <c:forEach items="${data}" var="titre" begin="1"
                       end="${data.size()}">
                <tr class="row-cell">
                    <c:forEach items="${titre}" var="item">
                        <td><c:out value="${item}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
