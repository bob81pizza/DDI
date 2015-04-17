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
                <img class="centered" src="images/header1.jpg">
	</header>		
	
            	
	<div class="intro">
	<br>
		<p> Welcome to the DDI Search Engine. The engine will help you locate interactions between two prescription drugs. Below, enter the drugs you 
		would like to search for, then select the type of sources and type of information you are interested in viewing.</p>	
	</div>
<<<<<<< HEAD
        <form>
	<div class="drugs centered">			
            <p class="stepHeader">Step 1: Please choose 2 drugs to compare</p>
            <div id="drugSelection1">
                <h4 class="bold centered">Drug 1</h4>
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
=======
	
	<div class="drugs">
            <form name="drugForm" action="SearchServlet" method="POST">
            <p class="stepHeader"> Step 1: Please choose 2 drugs to compare:</p>
            <div id="drugSelection1">
            <h4 class="bold">Drug 1</h4>
            <select name="drugList1" id="drugList1">
                <c:forEach items="${DrugBean.drugNames}" var = "dn">
                    <option value="${dn}">${dn}</option>
                </c:forEach>
                </select>
            <script>
                $(function () {
                    $('select[id="drugList1"]').listbox({
                        searchbar: true // enable a search bar to filter & search items
>>>>>>> origin/master
                    });
                </script>
            </div>
            <div id="drugSelection2">
<<<<<<< HEAD
                <h4 class="bold centered">Drug 2</h4>
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
=======
            <h4 class="bold">Drug 2</h4>
            <select name="drugList2" id="drugList2">
                <c:forEach items="${DrugBean.drugNames}" var = "dn">
                    <option value="${dn}">${dn}</option>
                </c:forEach>
                </select>
            <script>
                $(function () {
                    $('select[id="drugList2"]').listbox({
                        searchbar: true // enable a search bar to filter & search items
>>>>>>> origin/master
                    });
                </script>
            </div>
<<<<<<< HEAD
=======
		
<!--                    <input type="text" class="drugField" placeholder="Enter brand name or drug name for search"autocomplete="on"/>
                    <br>-->
                    <input type="submit" value="Find Interactions"/>
            </form>
>>>>>>> origin/master
	</div>

	<div class="filters centered clear">
            <div id="step2">
            <p class="stepHeader">Step 2: Please choose source types</p>
                <select id="sourceSelect" multiple>
                    <option value="Clinically Oriented">Clinically Oriented</option>
                    <option value="NLP Corpora">NLP Corpora</option>
                    <option value="Bioinformatics-Pharmacovigilance">Bioinformatics-Pharmacovigilance</option>
                </select>
                <script>
                    $(function () {
                        $('select[id="sourceSelect"]').listbox({});
                    });
                </script>
            </div>
            <div id="step3">
		<p class="stepHeader">Step 3: Please choose what data to display</p>
                <select id="displaySelect" multiple>
                    <option value="Certainty">Certainty</option>
                    <option value="Contraindication">Contraindication</option>
                    <option value="dateAnnotated">dateAnnotated</option>
                    <option value="ddiPkEffect">ddiPkEffect</option>
                    <option value="ddiPkMechanism">ddiPkMechanism</option>
                    <option value="effectConcept">effectConcept</option>
                    <option value="Homepage">Homepage</option>
                    <option value="Label">Label</option>
                    <option value="numericVal">numericVal</option>
                    <option value="pathway">pathway</option>
                    <option value="precaution">precaution</option>
                    <option value="severity">severity</option>
                    <option value="uri">uri</option>
                    <option value="whoAnnotated">whoAnnotated</option>
                    <option value="source">source</option>
                    <option value="ddiType">ddiType</option>
                    <option value="evidence">evidence</option>
                    <option value="evidenceSource">evidenceSource</option>
                    <option value="evidenceStatement">evidenceStatement</option>
                    <option value="Evidence Statement">Evidence Statement</option>
                    <option value="Research Statement Label">Research Statement Label</option>
                    <option value="Research Statement">Research Statement</option>
                    <option value="Management Options">Management Options</option>
                    <option value="DrugClass1">DrugClass1</option>
                    <option value="DrugClass2">DrugClass2</option>
                </select>
                <script>
                    $(function () {
                        $('select[id="displaySelect"]').listbox({});
                    });
                </script>
            </div>
	</div>
            <div id="submitButton"><input class="clear" type="submit" value="Find Interactions"/></div>
        </form>
    </div>
</body>
</html>
