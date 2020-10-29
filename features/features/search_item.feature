# frozen_string_literal: true

@search_item

Feature: Search item in Livelo

  AS a user
  I WANT search item in Livelo
  TO see the available products based on my search

  Background: Access the Livelo homepage
    Given that the main is successfully accessed

  @search_available_item

  Scenario: Search available item in Livelo
    When the desired item is entered
      | name | Console Playstation 4 Slim Sony 1 TB HDR Preto Bivolt CUH2115B |
    And click in search button
    And the correct path search is returned
    Then the search must return the desired item

  @search_unavailable_item

  Scenario: Search unavailable item in Livelo
    When the desired item is entered
      | name | Ayslan item 100% confiável |
    And click in search button
    And the correct path search is returned
    Then the following item not found message should be returned 'Não encontramos nenhum resultado para'
