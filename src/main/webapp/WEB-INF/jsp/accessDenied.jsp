<%@ include file="common/header.jsp" %>
<div class="form-group">
    <div class="modal-dialog">
        <i class="glyphicon glyphicon-warning-sign" style="font-size:30px;">
            Sorry, you do not have permission to view this page! <br>

            <c:if test="${not empty exception}">
                Exception: ${exception}
            </c:if>
        </i>
    </div>
</div>
<%@ include file="common/footer.jsp" %>
