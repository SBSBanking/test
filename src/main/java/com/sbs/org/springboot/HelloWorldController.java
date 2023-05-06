
package com.sbs.org.springboot;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HelloWorldController {
 
 @RequestMapping("/kyudo")
 public ModelAndView hello() {
 
  String machineMessage = "Hi Virtual Real Machine!";
  return new ModelAndView("hello", "message", machineMessage);
 }
 @PostMapping("/processQRCode")
 public ResponseEntity<?> processQRCode(@RequestBody Map<String, Object> requestBody) {
   String qrCodeContent = (String) requestBody.get("qrCodeContent");
   // Process the QR code content
   System.out.println("----------------->"+qrCodeContent);
   return ResponseEntity.ok().build();
 }
}
