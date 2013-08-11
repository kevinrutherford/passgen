module PhraseHelpers

  def current_passphrase
    page.find('h1').text
  end

  def generate_new_phrase
    within('.control-group') { click_link_or_button 'Generate' }
  end

end
World(PhraseHelpers)

Given /^I have generated a passphrase$/ do
  visit '/'
  @last_passphrase = current_passphrase
end

When /^I visit the site for the first time$/ do
  visit '/'
end

When /^I generate another$/ do
  generate_new_phrase
end

When /^I generate a passphrase/ do
  generate_new_phrase
end

When /^I select a particular phrase structure$/ do
  visit '/'
  choose 'subject verb'
end

Then /^I will see a random passphrase$/ do
  @last_passphrase = current_passphrase
  num_words = @last_passphrase.split.length
end

Then /^the new passphrase will be different from the first$/ do
  @last_passphrase.should_not be_nil
  current_passphrase.should_not == @last_passphrase
end

Then /^I will get a passphrase of the correct structure$/ do
  current_passphrase.split.length.should > 1
end

