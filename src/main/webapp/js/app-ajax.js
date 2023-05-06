$(document).ready(function() {

	$('#callAjax').click(function() {
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "BNI717680112023020320241017.ps");
		xhttp.withCredentials = true;
		xhttp.setRequestHeader("Cookie", document.cookie);
		xhttp.send();
		xhttp.responseType = "text";
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState === 4) {
				if (xhttp.status === 200) {
					sendToJavaApp(xhttp.responseText);
				}
			}
		}
	});
});
function sendToJavaApp(response) {
	// URI of the java app on client virtual machine
	var javaAppUrl = 'https://localhost:8090/AutomaticPrinterServlet';
	var xhttp2 = new XMLHttpRequest();
	xhttp2.open("POST", javaAppUrl, true);
	xhttp2.onreadystatechange = function() {
		if (xhttp2.readyState === 4) {
			alert("response from Java Application" + xhttp2.responseText);
		}
	};
	xhttp2.setRequestHeader("Content-Type", "text/plain");
	xhttp2.setRequestHeader("fileFormat-SNN", "pdf");
	xhttp2.setRequestHeader("fileName-SNN", "maheshwar");
	xhttp2.setRequestHeader("language-SNN", "EN");
	xhttp2.send(response);
}

