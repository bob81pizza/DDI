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
        <script>
            function toggleVisible(toggleClass){
                var elements = document.getElementsByClassName(toggleClass);
                for (var i = 0; i < elements.length; i++) {
                    if(elements[i].style.display == "none"){
                        elements[i].style.display = "block";
                    }
                    else{
                        elements[i].style.display = "none";
                    }
                }
            }
        </script>
    </head>
    <body>
        <div id="page">
            <header>
                <h2 class="centered">Search Results</h2>
                <h3 class="centered">Drugs Searched</h3>
                <p class="centered"><c:out value="Drug 1: ${ResultBean.drug1}"></c:out></p>  
                <p class="centered"><c:out value="Drug 2: ${ResultBean.drug2}"></c:out></p>
                <div id="submitButton"><input class="clear" type="submit" value="Reverse Object/Precipitant"/></div>
                <hr>
                <button class="infoButton" onclick="toggleVisible('certainty')">Certainty</button>
		<button class="infoButton" onclick="toggleVisible('contraindication')">Contraindication</button>
		<button class="infoButton" onclick="toggleVisible('ddiPkEffect')">ddiPkEffect</button>
		<button class="infoButton" onclick="toggleVisible('ddiPkMechanism')">ddiPkMechanism</button>
		<button class="infoButton" onclick="toggleVisible('Homepage')">Homepage</button>
		<br>
                <button class="infoButton" onclick="toggleVisible('label')">Label</button>
		<button class="infoButton" onclick="toggleVisible('source')">Source</button>
		<button class="infoButton" onclick="toggleVisible('researchStatementLabel')">Research Statement Label</button>
		<button class="infoButton" onclick="toggleVisible('managementOptions')">Management Options</button>
		<button class="infoButton" onclick="toggleVisible('evidenceStatement')">Evidence Statement</button>
            </header>
            <hr>
            <c:forEach items= "${ResultBean.results}" var="results">
                <div class="results">
                    <p class="object"><span class="bold">Object - </span> ${results.get(0)}</p>
                    <p class="precipitant"><span class="bold">Precipitant - </span> ${results.get(1)}</p>
                    <p class="certainty"><span class="bold">Certainty - </span> ${results.get(2)}</p>
                    <p class="label"><span class="bold">Label - </span> ${results.get(3)}</p>
                    <p class="source"><span class="bold">Source - </span> ${results.get(4)}</p>
                </div>
            </c:forEach>
            <p class="whiteText">Leave this here for CSS purposes</p>
        </div>
    </body>
</html>
