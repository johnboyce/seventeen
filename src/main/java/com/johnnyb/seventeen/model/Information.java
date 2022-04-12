package com.johnnyb.seventeen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_INFORMATION")
public class Information {
  @Column(name = "first_name")
  String firstName;
  @Column(name = "last_name")
  String lastName;
  @Column(name = "email")
  String email;
  @Column(name = "details")
  String details;
  @Column(name = "description")
  String description;
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;

  public Information() {
  }

  public Information(long id, String firstName, String lastName, String email, String details, String description) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.details = details;
    this.description = description;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getDetails() {
    return details;
  }

  public void setDetails(String details) {
    this.details = details;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
}

