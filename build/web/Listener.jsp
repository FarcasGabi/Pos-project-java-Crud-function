<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String target = "Publisher";%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head> 
    <body onload = "subscribe('Publisher');"> 

        <h1>Aprobare POZITII</h1> 

        <p id="info">Aici apar notificarile.</p>

        <script>
            function subscribe(publisher) {

                var xhttp = new XMLHttpRequest();
                
                xhttp.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200) {
                        document.getElementById("info").innerHTML =                                
                                this.responseText;
                        subscribe(publisher);
                    }
                };

                xhttp.open("GET", publisher, true);
                xhttp.send();
            };

        </script>
    </body>
</html>