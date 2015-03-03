require 'to_range'

Transform /^(-?\d+)$/ do |number|
  number.to_i
end

Given(/^we have a string that looks like "(.*?)"$/) do |test_str|
  @test_str = test_str
end

When(/^we try to convert this string into a range object by calling to_range on the string$/) do
  @result = @test_str.to_range
end

When(/^we try to convert this non\-parseable string into a range object by calling to_range on the string$/) do
  expect { @test_str.to_range }.to raise_error
end

Then(/^we should get a range object$/) do
  expect(@result).to be_an_instance_of(Range)
end

Then(/^it should raise an exception$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^we should not get a range object$/) do
  expect(@result).to_not be_an_instance_of(Range)
end

Then(/^it should range from "(.*?)" to "(.*?)"$/) do |from, to|
  expect(@result).to eq(from..to)
end