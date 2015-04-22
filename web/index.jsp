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
        <title>Drug Interaction Search Results</title>
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
            
            function showAllData(){
                var stuffToShow = document.getElementsByClassName('showAll');
                for(var i=0; i < stuffToShow.length; i++){
                    stuffToShow[i].style.display = "block";
                }
            }

        </script>
    </head>
    <body onload="hideStuff();">
        <div id="page">
            <header>
                <div id="scrollheader">
                    <h2 class="centered">Search Results</h2>
                    <h3 class="centered">Drugs Searched</h3>
                    <p class="centered"><c:out value="Drug 1: ${ResultBean.drug1}"></c:out> - <c:out value="${ResultBean.drug1ID}"></c:out></p>  
                    <p class="centered"><c:out value="Drug 2: ${ResultBean.drug2}"></c:out> - <c:out value="${ResultBean.drug2ID}"></c:out></p>
                    <p class="centered">Sources: ${ResultBean.sources}</p>
                    <form name="drugForm" action="SearchServlet" method="POST">
                        <input name="drug1" type="hidden" value="${ResultBean.drug1}">
                        <input name="drug2" type="hidden" value="${ResultBean.drug2}">
                        <c:forEach items="${ResultBean.sourcesList}" var="sources">
                            <input name="sourcesList" type="hidden" value="${sources}">
                        </c:forEach>
                        <div id="submitButton"><input class="clear" type="submit" value="Reverse Object/Precipitant"/></div>
                    </form>
                        <p class="centered">Click <a href="/DDI">here</a> to search for 2 new drugs</p>
                </div>
                <div id="dataButtons">
                    <c:if test="${ResultBean.sourceCSS.size()>0}">
                        <button class="${ResultBean.sourceCSS.get(6)}" onclick="toggleVisible('certainty')">Certainty</button>
                        <button class="${ResultBean.sourceCSS.get(7)}" onclick="toggleVisible('contraindication')">Contraindication</button>
                        <button class="${ResultBean.sourceCSS.get(9)}" onclick="toggleVisible('ddiPkEffect')">ddiPkEffect</button>
                        <button class="${ResultBean.sourceCSS.get(10)}" onclick="toggleVisible('ddiPkMechanism')">ddiPkMechanism</button>
                        <button class="${ResultBean.sourceCSS.get(12)}" onclick="toggleVisible('Homepage')">Homepage</button>
                        <br>
                        <button class="${ResultBean.sourceCSS.get(13)}" onclick="toggleVisible('label')">Label</button>
                        <button class="${ResultBean.sourceCSS.get(20)}" onclick="toggleVisible('source')">Source</button>
                        <button class="${ResultBean.sourceCSS.get(25)}" onclick="toggleVisible('researchStatementLabel')">Research Statement Label</button>
                        <button class="${ResultBean.sourceCSS.get(27)}" onclick="toggleVisible('managementOptions')">Management Options</button>
                        <button class="${ResultBean.sourceCSS.get(24)}" onclick="toggleVisible('evidenceStatement')">Evidence Statement</button>
                        <br>
                        <button class="${ResultBean.sourceCSS.get(8)}" onclick="toggleVisible('dateAnnotated')">Date Annotated</button>
                        <button class="${ResultBean.sourceCSS.get(11)}" onclick="toggleVisible('effectConcept')">Effect Concept</button>
                        <button class="${ResultBean.sourceCSS.get(14)}" onclick="toggleVisible('numericVal')">Numeric Value</button>
                        <button class="${ResultBean.sourceCSS.get(15)}" onclick="toggleVisible('pathway')">Pathway</button>
                        <button class="${ResultBean.sourceCSS.get(16)}" onclick="toggleVisible('precaution')">Precaution</button>
                        <br>
                        <button class="${ResultBean.sourceCSS.get(17)}" onclick="toggleVisible('severity')">Severity</button>
                        <button class="${ResultBean.sourceCSS.get(18)}" onclick="toggleVisible('uri')">URI</button>
                        <button class="${ResultBean.sourceCSS.get(19)}" onclick="toggleVisible('whoAnnotated')">Who Annotated</button>
                        <button class="${ResultBean.sourceCSS.get(22)}" onclick="toggleVisible('evidence')">Evidence</button>
                        <button class="${ResultBean.sourceCSS.get(23)}" onclick="toggleVisible('evidenceSource')">Evidence Source</button>
                        <button class="${ResultBean.sourceCSS.get(26)}" onclick="toggleVisible('researchStatement')">Research Statement</button>
                        <br>
                        <button class="infoButton" onclick="showAllData();">Show all Data</button>
                    </c:if>
                </div>
            </header>
            <hr>
            <c:if test="${ResultBean.results.size() == 0}"><span class="noResults">No results for selected drugs. Click <a href="/DDI">here</a> to search again.</span></c:if>
            
            <c:forEach items= "${ResultBean.results}" var="results">
                <div class="results">
                    <p class="showAll object"><span class="bold">Object - </span><a href="${results.get(0)}" target="_blank"> ${results.get(1)}</a></p>
                    <p class="showAll DrugClass1"><span class="bold">Object Drug Class - </span> ${results.get(27)}</p>
                    <p class="showAll precipitant"><span class="bold">Precipitant - </span><a href="${results.get(3)}" target="_blank"> ${results.get(4)}</a></p>
                    <p class="showAll DrugClass2"><span class="bold">Precipitant Drug Class - </span> ${results.get(28)}</p>
                    <p class="showAll certainty"><span class="bold">Certainty - </span> ${results.get(6)}</p>
                    <p class="showAll severity"><span class="bold">Severity - </span> ${results.get(17)}</p>
                    <p class="showAll hide label"><span class="bold">Label - </span> ${results.get(13)}</p>
                    <p class="showAll hide source"><span class="bold">Source - </span> ${results.get(20)}</p>
                    <p class="showAll whoAnnotated"><span class="bold">Who Annotated  - </span> ${results.get(19)}</p>
                    <p class="showAll dateAnnotated"><span class="bold">Date Annotated - </span> ${results.get(8)}</p>
                    <p class="showAll hide Homepage"><span class="bold">Homepage - </span> ${results.get(12)}</p>
                    <p class="showAll contraindication"><span class="bold">Contraindication - </span> ${results.get(7)}</p>
                    
                    <p class="showAll ddiPkEffect"><span class="bold">ddiPkEffect - </span> ${results.get(9)}</p>
                    <p class="showAll ddiPkMechanism"><span class="bold">ddiPkMechanism - </span> ${results.get(10)}</p>
                    <p class="showAll hide ddiType"><span class="bold">ddiType - </span> ${results.get(21)}</p>
                   
                    <p class="showAll hide managementOptions"><span class="bold">Management Options - </span> ${results.get(27)}</p>
                    
                    <p class="showAll hide effectConcept"><span class="bold">Effect Concept - </span> ${results.get(11)}</p>
                    <p class="showAll hide numericVal"><span class="bold">Numeric Value  - </span> ${results.get(14)}</p>
                    <p class="showAll hide pathway"><span class="bold">Pathway - </span> ${results.get(15)}</p>
                    <p class="showAll hide precaution"><span class="bold">Precaution - </span> ${results.get(16)}</p>
                    
                    <p class="showAll hide uri"><span class="bold">URI- </span> ${results.get(18)}</p>
                    
                    <p class="showAll hide evidence"><span class="bold">Evidence - </span> ${results.get(22)}</p>
                    <p class="showAll hide evidenceStatement"><span class="bold">Evidence Statement - </span> ${results.get(24)}</p>
                    
                    <c:if test="${results.get(23).length() < 5}">
                        <c:set var="evidenceSource" scope="session" value="${results.get(23)}" />
                        <p class="showAll evidenceSource"><span class="bold">Evidence Source- </span>${results.get(23)}</p>
                    </c:if>
                    <c:if test="${results.get(23).length() > 4}">
                        <p class="showAll evidenceSource"><span class="bold">Evidence Source- </span><a href="${results.get(23)}" target="_blank">  ${results.get(23)}</a></p>
                    </c:if>
                    
                    <p class="showAll hide researchStatementLabel"><span class="bold">Research Statement Label - </span> ${results.get(25)}</p>
                    <p class="showAll hide researchStatement"><span class="bold">Research Statement  - </span> ${results.get(26)}</p>
                     
                    <hr>
                </div>
            </c:forEach>
            <p class="whiteText">Leave this here for CSS purposes</p>
        </div>
    </body>
</html>
