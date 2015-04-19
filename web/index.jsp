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
            
            function hideStuff(){
                var stuffToHide = document.getElementsByClassName('hide');
                for (var i = 0; i < stuffToHide.length; i++) {
                    stuffToHide[i].style.display = "none";
                }
            }
            
            window.onload(hideStuff());
        </script>
    </head>
    <body>
        <div id="page">
            <header>
                <h2 class="centered">Search Results</h2>
                <h3 class="centered">Drugs Searched</h3>
                <p class="centered"><c:out value="Drug 1: ${ResultBean.drug1}"></c:out> - <!-- Get the drug ID as well and put here --></p>  
                <p class="centered"><c:out value="Drug 2: ${ResultBean.drug2}"></c:out> - <!-- Get the drug ID as well and put here --></p>
                <!-- Allow the user to click the button below to switch the object/precipitant -->
                <form name="drugForm" action="SearchServlet" method="POST">
                    <input type="hidden" value="">
                    <input type="hidden" value="">
                    <div id="submitButton"><input class="clear" type="submit" value="Reverse Object/Precipitant"/></div>
                </form>
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
                <br>
                <button class="infoButton" onclick="toggleVisible('dateAnnotated')">Date Annotated</button>
		<button class="infoButton" onclick="toggleVisible('effectConcept')">Effect Concept</button>
		<button class="infoButton" onclick="toggleVisible('numericVal')">Numeric Value</button>
		<button class="infoButton" onclick="toggleVisible('pathway')">Pathway</button>
		<button class="infoButton" onclick="toggleVisible('precaution')">Precaution</button>
                <br>
                <button class="infoButton" onclick="toggleVisible('severity')">Severity</button>
		<button class="infoButton" onclick="toggleVisible('uri')">URI</button>
		<button class="infoButton" onclick="toggleVisible('whoAnnotated')">Who Annotated</button>
		<button class="infoButton" onclick="toggleVisible('evidence')">Evidence</button>
		<button class="infoButton" onclick="toggleVisible('evidenceSource')">Evidence Source</button>
                <button class="infoButton" onclick="toggleVisible('researchStatement')">Research Statement</button>
            </header>
            <hr>
            <c:forEach items= "${ResultBean.results}" var="results">
<<<<<<< HEAD
                <div class="results">
                    <p class="object"><span class="bold">Object - </span> ${results.get(0)}</p>
                    <p class="precipitant"><span class="bold">Precipitant - </span> ${results.get(1)}</p>
=======
                <div class="results" style="width:100%;float:left;margin-bottom:25px;">
                    <p class="object"><span class="bold">Object - </span> <!-- Put the drug1 data in the href -->  <a href="" target="_blank"> ${results.get(0)}</a></p>
                    <p class="DrugClass1"><span class="bold">Object Drug Class - </span> </p>
                    <p class="precipitant"><span class="bold">Precipitant - </span> <!-- Put the drug2 data in the href --> <a href="" target="_blank"> ${results.get(1)}</a></p>
                    <p class="DrugClass2"><span class="bold">Precipitant Drug Class - </span> </p>
>>>>>>> origin/Jacky's-Branch
                    <p class="certainty"><span class="bold">Certainty - </span> ${results.get(2)}</p>
                    <p class="label"><span class="bold">Label - </span> ${results.get(3)}</p>
                    <p class="source"><span class="bold">Source - </span> ${results.get(4)}</p>
                    
                    <p class="hide contrindication"><span class="bold">Contrindication - </span> </p>
                    <p class="hide ddiPkEffect"><span class="bold">ddiPkEffect - </span> </p>
                    <p class="hide ddiPkMechanism"><span class="bold">ddiPkMechanism - </span> </p>
                    <p class="hide Homepage"><span class="bold">Homepage - </span> </p>
                    <p class="hide researchStatementLabel"><span class="bold">Research Statement Label - </span> </p>
                    <p class="hide managementOptions"><span class="bold">Management Options - </span> </p>
                    <p class="hide evidenceStatement"><span class="bold">Evidence Statement - </span> </p>
                    
                    <p class="hide dateAnnotated"><span class="bold">Date Annotated - </span> </p>
                    <p class="hide effectConcept"><span class="bold">Effect Concept - </span> </p>
                    <p class="hide numericVal"><span class="bold">Numeric Value  - </span> </p>
                    <p class="hide pathway"><span class="bold">Pathway - </span> </p>
                    <p class="hide precaution"><span class="bold">Precaution - </span> </p>
                    <p class="hide severity"><span class="bold">Severity - </span> </p>
                    <p class="hide uri"><span class="bold">URI- </span> </p>
                    <p class="hide whoAnnotated"><span class="bold">Who Annotated  - </span> </p>
                    <p class="hide ddiType"><span class="bold">ddiType - </span> </p>
                    <p class="hide evidence"><span class="bold">Evidence - </span> </p>
                    <p class="hide evidenceSource"><span class="bold">Evidence Source- </span> </p>
                    <p class="hide researchStatement"><span class="bold">Research Statement  - </span> </p>
                </div>
            </c:forEach>
            <p class="whiteText">Leave this here for CSS purposes</p>
        </div>
    </body>
</html>
