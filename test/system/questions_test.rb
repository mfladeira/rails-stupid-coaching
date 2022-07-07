require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying how are you? to coach return Silly question.." do
    visit ask_url
    fill_in "question", with: "how are you?"
    click_on 'Ask!'
    assert_selector 'h3', text: 'Silly question, get dressed and go to work!'
  end
end
