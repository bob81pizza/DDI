<%-- 
    Document   : DDIhome
    Created on : Apr 16, 2015, 9:27:02 AM
    Author     : cwm24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
	<title>Welcome to DDI Search</title>
	<link rel="stylesheet" type="text/css" href="css/ddistyle.css" />
	<meta charset="UTF-8">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        <link href="css/listbox.css" rel="stylesheet" />
        <script src="js/listbox.js"></script>


</head>

<body>
    <div id="page">
        <header>
		<h1 class="centered">DDI Search Engine</h1>
                <img src="images/header1.jpg">
	</header>		
	
            	
	<div class="intro">
	<br>
		<p> Welcome to the DDI Search Engine. The engine will help you locate interactions between two prescription drugs. Below, enter the drugs you 
		would like to search for, then select the type of sources and type of information you are interested in viewing.</p>	
	</div>
	
	<div class="drugs">			
            <p class="stepHeader"> Step 1: Please choose 2 drugs to compare:</p>
            <div id="drugSelection1">
            <h4 class="bold">Drug 1</h4>
            <select id="drugList1">
                <c:forEach items="${DrugBean.drugNames}" var = "dn">
                    <option value="${dn}">${dn}</option>
                </c:forEach>
                </select>
            <script>
                $(function () {
                    $('select[id="drugList1"]').listbox({
                        searchbar: true // enable a search bar to filter & search items
                    });
                });
            </script>
            </div>
            <div id="drugSelection2">
            <h4 class="bold">Drug 2</h4>
            <select id="drugList2">
                <c:forEach items="${DrugBean.drugNames}" var = "dn">
                    <option value="${dn}">${dn}</option>
                </c:forEach>
                </select>
            <script>
                $(function () {
                    $('select[id="drugList2"]').listbox({
                        searchbar: true // enable a search bar to filter & search items
                    });
                });
            </script>
            </div>
		<form name="nameForm" action="SearchServlet" method="POST">
                    <input type="text" class="drugField" placeholder="Enter brand name or drug name for search"autocomplete="on"/>
                    <br>
                    <input type="submit" value="Find Interactions"/>
                </form>
	</div>

	<div class="filters">		
		<p class="stepHeader"> Step 2: Please choose desired source types:</p>
		<button class="sourceButton" onclick="">Clinically Oriented</button>
		<button class="sourceButton" onclick="">NLP Corpora</button>
		<button class="sourceButton" onclick="">Bioinformatics-Pharmacovigilance</button>		
		
		<p class="stepHeader"> Step 3: Please choose what to display:</p>
		<button class="infoButton" onclick="">Certainty</button>
		<button class="infoButton" onclick="">Contraindication</button>
		<button class="infoButton" onclick="">ddiPkEffect</button>
		<button class="infoButton" onclick="">ddiPkMechanism</button>
		<button class="infoButton" onclick="">Homepage Label</button>
		<br>
		<button class="infoButton" onclick="">Source</button>
		<button class="infoButton" onclick="">Research Statement Label</button>
		<button class="infoButton" onclick="">Management Options</button>
		<button class="infoButton" onclick="">Evidence Statement</button>
		<br>
		<button class="addMore" onclick=""><img src="images/button.png"/></button>
	</div>
    </div>
</body>
</html>
