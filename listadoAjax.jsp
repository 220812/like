    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>

        <c:forEach var="lugar" items="${formaListadoLugares.lugares}">
            <tr>
                <td align="left" width="20%"><c:out value="${lugar.nombre}"/></td>
                <td align="left" width="80%">
                </td>
            </tr>
        </c:forEach>