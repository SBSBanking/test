 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="js/app-ajax.js" type="text/javascript"></script>

<title>Kyudo Application</title>
</head>
<body>
	<!-- <a href="kyudo.do">Click here to read hello message </a> -->
	</br>
	</br>
	<button id="callAjax">Click Me</button>

</body>
</html>

 <!-- <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>QR Code Scanner</title>
  <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
</head>
<body>
  <video id="video"></video>
  <script>
    let scanner = new Instascan.Scanner({ video: document.getElementById('video') });
    scanner.addListener('scan', function (content) {
      alert('QR code content: ' + content);
      console.log("Result : "+content);
   // Get the QR code content
      let qrCodeContent = "example content";

      // Create a new XMLHttpRequest object
      let xhr = new XMLHttpRequest();

      // Set the request method and URL
      xhr.open("POST", "/processQRCode", true);

      // Set the request header
      xhr.setRequestHeader("Content-type", "application/json");

      // Define the callback function to handle the response
      xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
          console.log("QR code content sent successfully.");
        }
      };

      // Send the request with the QR code content as the request body
      xhr.send(JSON.stringify({qrCodeContent: content}));
      
      let tracks = video.srcObject.getTracks();
      tracks.forEach(function(track) {
        track.stop();
      });
      // Send the content to your Java backend for further processing
    });
    Instascan.Camera.getCameras().then(function (cameras) {
      if (cameras.length > 0) {
        scanner.start(cameras[0]);
      } else {
        console.error('No cameras found.');
      }
    }).catch(function (e) {
      console.error(e);
    });
  </script>
</body>
</html>
  -->