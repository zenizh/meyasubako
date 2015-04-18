require 'spec_helper'

describe 'Integration test', type: :feature, js: true do
  let(:container) { find('.meyasubako__container', visible: false) }
  let(:heading)   { find('.meyasubako__heading') }

  before { visit root_path }

  describe 'toggle box' do
    it 'should toggle the visibility' do
      expect(container).not_to be_visible

      heading.click

      expect(container).to be_visible
    end
  end

  describe 'send opinion' do
    it 'should send correctly' do
      heading.click

      fill_in :meyasubako__content, with: 'foo'

      click_on 'Submit'

      # Wait for sending email
      expect(page).to have_content 'Sending ...'
      expect(page).to have_content 'Thank you for sending your opinion.'

      open_email 'test@example.com'

      expect(current_email).to have_content 'foo'
    end
  end
end
