package com.johnnyb.seventeen.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SeventeenConfig {

  @Bean("defaultObjectMapper")
  public ObjectMapper defaultObjectMapper(){
    return new ObjectMapper();
  }
}
