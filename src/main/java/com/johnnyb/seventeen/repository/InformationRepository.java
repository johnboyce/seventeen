package com.johnnyb.seventeen.repository;

import com.johnnyb.seventeen.model.Information;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InformationRepository extends JpaRepository<Information, Long> {
  List<Information> findAll();
}
