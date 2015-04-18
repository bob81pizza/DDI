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
                        $(function(){
                            $('select[id="drugList1"]').listbox({
                                searchbar: true // enable a search bar to filter & search items
                            });
                        });
                    </script>
                </div>
                <div id="drugSelection2">
                    <h4 class="bold centered">Drug 2</h4>
                    <select id="drugList2">
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

            <div class="filters centered clear">
                <div id="step2">
                <p class="stepHeader">Step 2: Please choose source types</p>
                    <select id="categorySelect" multiple>
                        <option value="Clinically Oriented">Clinically Oriented</option>
                        <option value="NLP Corpora">NLP Corpora</option>
                        <option value="Bioinformatics-Pharmacovigilance">Bioinformatics-Pharmacovigilance</option>
                    </select>
                    <script>
                        $(function () {
                            $('select[id="categorySelect"]').listbox({});
                        });
                    </script>
                </div>
                <div id="step3">
                    <p class="stepHeader">Step 3: Please choose what data to display</p>
                    <select id="sourceSelect" multiple>
                        <option value="1">source 1</option>
                        <option value="2">source 2</option>
                        <option value="3">source 3</option>
                    </select>
                    <script>
                        $(function () {
                            $('select[id="sourceSelect"]').listbox({});
                        });
                    </script>
                </div>
            </div>
            <div id="submitButton"><input class="clear" type="submit" value="Find Interactions"/></div>
        </div>
    </body>
</html>
