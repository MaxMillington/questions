require 'rails_helper'

describe 'user visits homepage and finds an input box' do

  context 'user visits homepage and' do
    it 'works' do
      visit root_path
      expect(page).to have_content('Hello')

    end
  end

  context 'user inputs number into form field' do
    it 'takes you to the quiz show page' do
      visit root_path
      fill_in 'Size', with: '10'
      click_link_or_button 'Create Quiz'
      expect(current_path).to eq(quiz_path)
    end
  end
end