package com.johnnyb.seventeen.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.johnnyb.seventeen.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;
import java.util.List;

@Controller
public class SeventeenWebController {

  @Autowired
  ObjectMapper defaultObjectMapper;

  @Autowired
  InformationService informationService;

  @Value("${spring.application.name}")
  private String title;

  @Value("${app.welcome.message}")
  private String message;

  private List<String> features = Arrays.asList("Pattern Matching for Switch (Preview)", "Remove RMI Activation", "Sealed Classes", "Deprecate the Applet API for Removal");

  @GetMapping("/")
  public String main(Model model) {
    model.addAttribute("title", title);
    model.addAttribute("message", message);
    model.addAttribute("features", features);
    return "welcome"; //view
  }

  @GetMapping("/getInformation")
  public String getInformation(Model model) {
    model.addAttribute("title", title);
    model.addAttribute("message", message);
    model.addAttribute("features", features);
    model.addAttribute("information", informationService.getSomeInformation());
    return "information"; //view
  }

  @GetMapping("/name")
  public JsonNode getSomeJson() {
    ObjectNode objectNode = defaultObjectMapper.createObjectNode();
    objectNode.put("yourName", "duke");
    return objectNode;
  }
}
