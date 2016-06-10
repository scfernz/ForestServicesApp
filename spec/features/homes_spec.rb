require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  context 'Given I am on the home page' do
    Steps 'Visit the homepage' do
      Given 'I am on home page' do
      visit '/'
      end
      Then 'I should see the homepage title' do
      expect(page).to have_content('Forest Service Homepage')
      end
      And 'I can create a species and save it in the database' do
      fill_in 'species_name', with: 'Capybara'
      click_button 'Add to species'
      end
    end
  end

  context 'I can go through to the add page' do
    Steps 'Add a species' do
      Given 'I am on home page' do
      visit '/'
      end
      Then 'I should see the homepage title' do
      expect(page).to have_content('Forest Service Homepage')
      end
      And 'I can create a species and save it in the database' do
      fill_in 'species_name', with: 'Capybara'
      click_button 'Add to species'
      end
      Then 'I can see the species was added' do
      expect(page).to have_content('Species added: Capybara')
      end
    end
  end

  context 'I can list all the species in the database' do
    Steps 'I can list all species by hitting a button' do
      Given 'I am on home page' do
      visit '/'
      end
      Then 'I should see the homepage title' do
        expect(page).to have_content('Forest Service Homepage')
      end
      And 'I can use the list button' do
        click_button 'List all species'
      end
      Then 'I can see the species was added' do
        expect(page).to have_content('Capybara')
      end
    end
  end
end
