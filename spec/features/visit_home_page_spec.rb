require 'rails_helper'

describe 'user visits homepage and finds an input box' do

  context 'user visits homepage and' do
    it 'works' do
      visit root_path
      expect(page).to have_content('Hello')

    end
  end

  context 'user clicks link' do
    it 'takes you to the quiz show page' do
      visit root_path
      click_link_or_button 'New Quiz'
      expect(current_path).to eq(new_quiz_path)
    end
  end
end