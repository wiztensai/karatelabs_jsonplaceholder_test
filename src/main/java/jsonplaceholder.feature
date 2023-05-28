Feature: Testing JSONPlaceholder API

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Verify response from /posts endpoint
    Given path '/posts'
    When method GET
    Then status 200
    And match response contains [{ id: '#number', title: '#string', body: '#string', userId: '#notnull' }]
