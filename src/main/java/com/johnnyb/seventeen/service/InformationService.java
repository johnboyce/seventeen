package com.johnnyb.seventeen.service;

import com.johnnyb.seventeen.model.Information;
import org.springframework.stereotype.Service;

@Service
public class InformationService {

  public Information getSomeInformation() {
    Information information = new Information();
    information.setFirstName("Robert Frost");
    information.setDescription("One");
    information.setEmail("rf@hotmail.com");
    information.setDetails("""
                              Frost died in Boston on January 29, 1963, of complications from prostate surgery. He was buried at the Old Bennington Cemetery in Bennington, Vermont. His epitaph quotes the last line from his poem, "The Lesson for Today" (1942): "I had a lover's quarrel with the world.
                                                                         
                              "One of the original collections of Frost materials, to which he himself contributed, is found in the Special Collections department of the Jones Library in Amherst, Massachusetts. The collection consists of approximately twelve thousand items, including original manuscript poems and letters, correspondence and photographs, as well as audio and visual recordings.[29] The Archives and Special Collections at Amherst College holds a small collection of his papers. The University of Michigan Library holds the Robert Frost Family Collection of manuscripts, photographs, printed items, and artwork. The most significant collection of Frost's working manuscripts is held by Dartmouth. ");
                             """);
    return information;
  }
}
