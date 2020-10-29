# frozen_string_literal: true

@search_item

Feature: Search item in Livelo

  AS a user
  I WANT search item in Livelo
  TO see the available products based on my search

  Background: Access the Livelo homepage
    Given that the main is successfully accessed

  Scenario: Search item in Livelo
    When the desired item is entered
      | name | Jogo FIFA 21 - PS4 |
    And click in search button
    And the correct path is returned
    Then the search must return the desired item
