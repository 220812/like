    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>
<br>
    <font size='5'><fmt:message key="formaReporteLugar.titulo" /></font>
    <table cellpadding="0" cellspacing="0" width="60%" border="0">
        <tr>
            <td colspan="4">
               <html:errors />
            </td>
        </tr>
        <tr bgcolor="#CCCCCC">
		 <td><b><fmt:message key="formaRLugar.etiqueta.estado" /></b></td>
         <td><b><fmt:message key="formaRLugar.etiqueta.nombre" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaRLugar.etiqueta.descripcion" /></b></td>
		 <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaRLugar.etiqueta.poblacion" /></b></td>
		 <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaRLugar.etiqueta.coordenada" /></b></td>

        </tr>
		<c:forEach var="lugar" items="${formaReporteLugar.lugares}">
            <tr>
			    <td align="left" width="20%">
				<c:forEach var="estado" items="${formaReporteLugar.estados}">
                <c:if test="${estado.id == lugar.idEstado}">
                <c:out value="${estado.nombre}"/>
                </c:if>
                </c:forEach></td>
                <td align="left" width="20%"><c:out value="${lugar.nombre}"/></td>
                <td align="left" width="60%"><c:out value="${lugar.descripcion}"/></td>
				<td align="left" width="60%"><c:out value="${lugar.poblacion}"/></td>
				<td align="left" width="60%"><c:out value="${lugar.coordenada}"/></td>
				
                
            </tr>
        </c:forEach>
        
    </table>
   