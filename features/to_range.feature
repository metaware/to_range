Feature: to_range
  In order to convert range looking strings into ruby range objects
  As a Ruby developer
  I should be able to use to_range gem

  Scenario: string is parseable to a range object
     Given we have a string that looks like "0..10"
      When we try to convert this string into a range object by calling to_range on the string
      Then we should get a range object
       And it should range from "0" to "10"

  Scenario: string is not parseable to a range object
     Given we have a string that looks like "010"
      When we try to convert this non-parseable string into a range object by calling to_range on the string
      Then we should not get a range object 

  Scenario: string is ambiguous
     Given we have a string that looks like "100..105..115"
      When we try to convert this string into a range object by calling to_range on the string
      Then we should get a range object
       And it should range from "100" to "105"