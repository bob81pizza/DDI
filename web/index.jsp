<%-- 
    Document   : index
    Created on : Apr 10, 2015, 8:55:58 AM
    Author     : cwm24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Drugs!</h1>
        
        <h2>Report Results</h2>
                
            <p><c:out value="Drug 2 = ${DrugBean.drugNames.get(1)}"></c:out></p>
            
            <c:forEach items= "${ResultBean.results}" var="results">
                <div class="results" style="width:100%;float:left;margin-bottom:25px;">
                    <p>Object ${results.get(0)}</p>
                    <p>Precipitant ${results.get(1)}</p>
                    <p>Certainty ${results.get(2)}</p>
                </div>
            </c:forEach>
        </table>
    </body>
</html>
