package com.johnnyb.seventeen.controller;

import com.johnnyb.seventeen.model.Information;
import com.johnnyb.seventeen.service.InformationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/api/v1/")
public class SeventeenRestController {

  // TODO Add OpenAPI3
  private InformationService informationService;
  Logger logger = LoggerFactory.getLogger(SeventeenRestController.class);

  public SeventeenRestController(InformationService informationService) {
    this.informationService = informationService;
  }

  @GetMapping("/information")
  public List<Information> getInformation() {
    System.out.println("Hi");
    return informationService.getInformation();
  }

}
