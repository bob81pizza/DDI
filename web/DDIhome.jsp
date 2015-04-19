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
                <p> Welcome to the DDI Search Engine. The engine will help you locate interactions between two prescription drugs. Below, enter the drugs you 
                    would like to search for, then select the type of sources and type of information you are interested in viewing.</p>	
            </div>
            <form name="drugForm" action="SearchServlet" method="POST">
            <div class="drugs centered">			
                <p class="stepHeader">Step 1: Please choose 2 drugs to compare</p>
                <div id="drugSelection1">
                    <h4 class="bold centered">Drug 1 - Object</h4>
                    <select name="drugList1" id="drugList1">
                        <c:forEach items="${DrugBean.drugNames}" var = "dn">
                            <option value="${dn}">${dn}</option>
                        </c:forEach>
                        </select>
                    <script>
                        $(function(){
                            $('select[id="drugList1"]').listbox({
                                searchbar: true // enable a search bar to filter & search items
                            });
                        });
                    </script>
                </div>
                <div id="drugSelection2">
                    <h4 class="bold centered">Drug 2 - Precipitant</h4>
                    <select name="drugList2" id="drugList2">
                        <c:forEach items="${DrugBean.drugNames}" var = "dn">
                            <option value="${dn}">${dn}</option>
                        </c:forEach>
                        </select>
                    <script>
                        $(function(){
                            $('select[id="drugList2"]').listbox({
                                searchbar: true // enable a search bar to filter & search items
                            });
                        });
                    </script>
                </div>
            </div>

            <div class="filters clear">
                <p class="centered stepHeader">Step 2: Please choose the sources for the data</p>
                <div class="centerDiv">
                    <input type="checkbox" name="source" value="Clinically Oriented"><span class="bold">Clinically Oriented</span><br>
                    <div class="indent">
                        <input type="checkbox" name="source" value="CredibleMeds">CredibleMeds<br>
                        <input type="checkbox" name="source" value="NDF-RT">NDF-RT<br>
                        <input type="checkbox" name="source" value="ONC-HighPriority">ONC-HighPriority<br>
                        <input type="checkbox" name="source" value="ONC-NonInteruptive">ONC-NonInteruptive<br>
                    </div>
                    <input type="checkbox" name="source" value="Bioinformatics-Pharmacovigilance"><span class="bold">Bioinformatics-Pharmacovigilance</span><br>
                    <div class="indent">
                        <input type="checkbox" name="source" value="DIKB">DIKB<br>
                        <input type="checkbox" name="source" value="Drugbank">Drugbank<br>
                    </div>
                </div>
            </div>
            <div id="submitButton"><input class="clear" type="submit" value="Find Interactions"/></div>
            </form>
        </div>
    </body>
</html>
