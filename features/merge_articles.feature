Feature: Merge Articles
  As a blog administrator
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully merge articles
    Given I am on the new article page
    When I fill in "article_title" with "Hello Ruby!"
    And I fill in "article__body_and_extended_editor" with "Great language!"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Hello Ruby!"
    When I follow "Hello Ruby!"
    Then I should see "Great language!"

    Given I am on the new article page
    When I fill in "article_title" with "Hello Rails!"
    And I fill in "article__body_and_extended_editor" with "Great framework!"
    And I press "Publish"
    Then I should see "Hello Rails!"
    

    Given I am on the admin content page
    When I follow "Hello Rails!"
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should see "Hello Rails!"
    And I should not see "Hello Ruby!"

    
    Then I follow "Hello Rails!"
    And I should see "Great language!"
    And I should see "Great framework!"

