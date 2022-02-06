package com.johnnyb.seventeen.controller;

import com.johnnyb.seventeen.model.Information;
import com.johnnyb.seventeen.service.InformationService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/api/v1/")
public class SeventeenRestController {
  private InformationService informationService;

  public SeventeenRestController(InformationService informationService) {
    this.informationService = informationService;
  }

  @GetMapping("/information")
  public Information getInformation() {
    System.out.println("Hi");
    return informationService.getSomeInformation();
  }

}
