    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>
<br>
    <font size='5'><fmt:message key="formaReporteRecomendacion.titulo" /></font>
    <table cellpadding="0" cellspacing="0" width="60%" border="0">
        <tr>
            <td colspan="4">
               <html:errors />
            </td>
        </tr>
        <tr bgcolor="#CCCCCC" border=1px;>
		<td><b><fmt:message key="formaRRecomendacion.etiqueta.lugar" /></b></td>
		<td ><b><fmt:message key="formaRRecomendacion.etiqueta.comentario" /></b></td>
		 <td><b><fmt:message key="formaRRecomendacion.etiqueta.calificacion" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaRRecomendacion.etiqueta.nombre" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaRRecomendacion.etiqueta.fecha" /></b></td>
		 
        </tr>
        <c:forEach var="recomendar" items="${formaReporteRecomendar.recomendacion}">
            <tr>
			    <td align="left" width="20%">
				<c:forEach var="lugar" items="${formaReporteRecomendar.lugares}">
                <c:if test="${lugar.id == recomendar.idLugar}">
                <c:out value="${lugar.nombre}"/>
                </c:if>
                </c:forEach>
				</td>
				<td align="left" width="60%"><c:out value="${recomendar.comentario}"/></td>
				<td align="left" width="60%"><c:out value="${recomendar.calificacion}"/></td>
                <td align="left" width="20%"><c:out value="${recomendar.nombre}"/></td>
                <td align="left" width="60%"><c:out value="${recomendar.fecha}"/></td>
				
				
				
                
            </tr>
        </c:forEach>
    </table>
   