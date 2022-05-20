<%--
  Created by IntelliJ IDEA.
  User: machk
  Date: 08/04/2022
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>

<div class="d-flex  flex-column  bg-light  container">
    <h2 class="display-5 text-center pt-5 px-5 fw-bold">Veuillez saisir vos identifiants</h2>
    <div class="row  py-5 my-5 h-50">
        <div class="col-12 col-lg-4 card container p-5 card  justify-content-center">
            <div class="d-flex flex-column
							 justify-content-center">
                <form method="post" action="index" class="row d-flex  justify-content-center g-3" id="post-form">
                    <c:if test="${!empty error}">
                        <div class=" col-12 alert alert-danger" role="alert">
                            <c:out value="${error}"/>
                        </div>
                    </c:if>
                    <div class="col-12">
                        <label class="form-label fw-bold" for="userName">Nom d'utilisateur</label>
                        <input name="userName" class="form-control" id="userName" required type="text"/>
                    </div>
                    <div class="col-12">
                        <label class="form-label fw-bold" for="password">Mot de passe</label>
                        <input name="password" class="form-control" id="password" required type="password"/>
                    </div>
                    <div class="col-12 ">
                        <button class="btn btn-primary w-100" id="connexion" type="submit">Connexion</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-12 col-lg-4 offset-lg-2">
            <img class="img-fluid" src="icons/login.png" alt="Illustration" />
        </div>
    </div>
</div>
