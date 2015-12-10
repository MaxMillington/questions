require 'rails_helper'

describe 'user visits homepage and finds an input box' do

  context 'user visits homepage and' do
    it 'works' do
      visit root_path
      expect(page).to have_content('Hello')

    end
  end
end