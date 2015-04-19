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
                    <input type="checkbox" id="CO-cat" value="Clinically Oriented" onchange="checkSources('CO-cat');"><span class="bold">Clinically Oriented</span><br>
                    <div class="indent">
                        <input type="checkbox" id="COsource1" value="CredibleMeds">CredibleMeds<br>
                        <input type="checkbox" id="COsource2" value="NDF-RT">NDF-RT<br>
                        <input type="checkbox" id="COsource3" value="ONC-HighPriority">ONC-HighPriority<br>
                        <input type="checkbox" id="COsource4" value="ONC-NonInteruptive">ONC-NonInteruptive<br>
                    </div>
                    <input type="checkbox" id="BioPharm-cat" value="Bioinformatics-Pharmacovigilance" onchange="checkSources('BioPharm-cat');"><span class="bold">Bioinformatics-Pharmacovigilance</span><br>
                    <div class="indent">
                        <input type="checkbox" id="BPsource1" value="DIKB">DIKB<br>
                        <input type="checkbox" id="BPsource2" value="Drugbank">Drugbank<br>
                    </div>
                    <script>
                        function checkSources(category){
                            var catCheckStatus = document.getElementById(category).checked;
                            if(category == "CO-cat"){
                                if(catCheckStatus == true){
                                    document.getElementById('COsource1').checked = true;
                                    document.getElementById('COsource2').checked = true;
                                    document.getElementById('COsource3').checked = true;
                                    document.getElementById('COsource4').checked = true;
                                }
                                if(catCheckStatus == false){
                                    document.getElementById('COsource1').checked = false;
                                    document.getElementById('COsource2').checked = false;
                                    document.getElementById('COsource3').checked = false;
                                    document.getElementById('COsource4').checked = false;
                                }
                            }
                            if(category == "BioPharm-cat"){
                                if(catCheckStatus == true){
                                    document.getElementById('BPsource1').checked = true;
                                    document.getElementById('BPsource2').checked = true;
                                }
                                if(catCheckStatus == false){
                                    document.getElementById('BPsource1').checked = false;
                                    document.getElementById('BPsource2').checked = false;

                                }
                            }
                        }
                    </script>
                </div>
            </div>
            <div id="submitButton"><input class="clear" type="submit" value="Find Interactions"/></div>
            </form>
        </div>
    </body>
</html>
