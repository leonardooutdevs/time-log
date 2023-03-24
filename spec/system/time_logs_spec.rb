require 'rails_helper'

RSpec.describe 'Time Logs' do
  before { driven_by :rack_test }

  describe '/index' do
    subject(:index) { visit '/time_logs' }

    context 'when viewing time logs' do
      before do
        time_logs
        index
      end

      let(:time_logs) { create_list(:time_log, 2) }

      it { expect(page.status_code).to eq(200) }
      it { expect(page).to have_content('Duration (Hours)') }
      it { expect(page).to have_content('Description') }
      it { expect(page).to have_content('Status') }
      it { expect(page).to have_link('New') }
      it { expect(page).to have_selector('#time_log_form') }
      it { expect(page).to have_selector('#time_logs') }

      it 'when have the correct duration hours', :aggregate_failures do
        time_logs.each do |time_log|
          expect(page).to have_content(time_log.duration_hours)
        end
      end

      it 'when have the correct description', :aggregate_failures do
        time_logs.each do |time_log|
          expect(page).to have_content(time_log.description)
        end
      end

      it 'when have the correct status', :aggregate_failures do
        time_logs.each do |time_log|
          expect(page).to have_content(time_log.status)
        end
      end

      it 'when have the correct selector for each time log', :aggregate_failures do
        time_logs.each do |time_log|
          expect(page).to have_selector("#time_log_#{time_log.id}")
        end
      end
    end
  end
end
