function subscribe(publisher) {

    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("info").innerHTML =
                    document.getElementById("info").innerHTML +
                    "<br>" +
                    this.responseText;
            subscribe(publisher);
        }
    };

    xhttp.open("GET", publisher, true);
    xhttp.send();
}
;

