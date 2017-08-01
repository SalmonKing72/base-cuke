@testing
Feature: showing off cucumber with selenium

    Scenario: test a web app
        Given I have a browser
        When I visit google
        Then it should have a title "Google"

    @wip
    Scenario: example test in development
        Given I have a browser
        When I visit Amazon
        Then it should have a title "Amazon"