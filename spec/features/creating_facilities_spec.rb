require 'rails_helper'

RSpec.feature 'Users can create new facilities' do
  scenario 'with valid attributes' do
    visit '/'

    click_link 'New Facility'

    fill_in 'Name', with: 'Bishkek Prime'
    fill_in 'Start', with: 'End of 2019'
    fill_in 'Number of Floors', with: '12-14'
    fill_in 'Ceiling height', with: '3.2m'
    fill_in 'Underground garage', with: 'Available'
    fill_in 'Description', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."

    click_button 'Create Facility'
    expect(page).to have_content 'Facility has been created.'
  end
end
