# frozen_string_literal: true

@access_main_page

Feature: Access Livelo main page

  AS a user
  I WANT to see the main page
  TO view available system functions

  Scenario: Access the Livelo homepage
    Given that the livelo page is accessed
    When in the correct path
    Then the main page must be redirected
