<%-- 
    Document   : DDIhome
    Created on : Apr 16, 2015, 9:27:02 AM
    Author     : cwm24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	<div class="headerArea"> 
		<p class="pageTitle">DDI Search Engine</p>
		
		<form class="loginForm">
			Login: <input type="text" id="login">
			<br>
			Password: <input type="text" id="pw">
			<br>
			<input type="submit" value="Login"/>
			<br>
			<p class="newAccount"><a href="">Create a new account</a></p>
		</form>	
	</div>		
	
	<div class="image">
			<p> <img src="images/header.jpg" align="middle"/></p>	
	</div>
	
	<div class="intro">
	<br>
		<p> Welcome to the DDI Search Engine. The engine will help you locate interactions between two prescription drugs. Below, enter the drugs you 
		would like to search for, then select the type of sources and type of information you are interested in viewing. Your results will appear
		below.</p>	
	</div>
	
	<div class="drugs">			
		<p class="stepHeader"> Step 1: Please choose 2 drugs to compare:</p>
                
                <select id="drugList" multiple>
                <!-- Need server side code to create the actual options with a loop -->
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            <script>
                $(function () {
                    $('select[id="drugList"]').listbox({
                        searchbar: true // enable a search bar to filter & search items
                    });
                });
            </script>

		
		<input type="text" class="drugField" placeholder="Enter brand name or drug name for search"autocomplete="on"/>
		<br>
		<input type="submit" value="Find Interactions"/>		
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
	
	<div class="results">
		<p> Drug 1 chosen:
		<br>
			Drug 2 chosen:
		</p>
		
		<div class="resultsField">
		
		</div>
	</div>
	
</body>
</html>
