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

    
    #When I follow "Hello Rails!"
    #Then I should see "Great framework!"

    #When I follow "Hello Rails!"
    #And I fill in ":merge_with" with "4"
    #And I press "Merge"    

   # Given I am on the new article page
   # When I fill in "article_title" with "Foobar"
   # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
   # And I press "Publish"
   # Then I should be on the admin content page
   # When I go to the home page
   # Then I should see "Foobar"
   # When I follow "Foobar"
   # Then I should see "Lorem Ipsum"
# ------------------------------------------------------------------
  #  The article merge feature
  #@should be shown on the article edit page [15 points] (FAILED)
  #should create a single merged article [15 points] (FAILED)
  #should create an article with the text of both original articles [20 points] (#FAILED)
  #should carry over the comments from both merged articles [20 points] (FAILED)
  #should only show the merge button to administrators [15 points] (FAILED)
  #should only allow administrators to merge articles [15 points]