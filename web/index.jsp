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
        <link rel="stylesheet" type="text/css" href="css/ddistyle.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div id="page">
        <h2 class="centered">Search Results</h2>
            <h3 class="centered">Drugs Searched</h3>
            <p class="centered"><c:out value="Drug 1: ${ResultBean.drug1}"></c:out></p>  
            <p class="centered"><c:out value="Drug 2: ${ResultBean.drug2}"></c:out></p>
            <hr>
            <c:forEach items= "${ResultBean.results}" var="results">
                <div class="results" style="width:100%;float:left;margin-bottom:25px;">
                    <p><span class="bold">Object - </span> ${results.get(0)}</p>
                    <p><span class="bold">Precipitant - </span> ${results.get(1)}</p>
                    <p><span class="bold">Certainty - </span> ${results.get(2)}</p>
                </div>
            </c:forEach>
            <p class="whiteText">Leave this here for CSS purposes</p>
        </div>
    </body>
</html>
