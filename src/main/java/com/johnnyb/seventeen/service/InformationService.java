package com.johnnyb.seventeen.service;

import com.johnnyb.seventeen.model.Information;
import com.johnnyb.seventeen.repository.InformationRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InformationService {

  private final InformationRepository informationRepository;

  public InformationService(InformationRepository informationRepository) {
    this.informationRepository = informationRepository;
  }

  public List<Information> getInformation() {
    return informationRepository.findAll();
  }
}
