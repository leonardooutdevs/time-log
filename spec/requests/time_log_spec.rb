# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'TimeLogs' do
  describe 'POST create' do
    subject(:create) { post time_logs_path(params) }

    context 'when success' do
      let(:params) do
        {
          time_log: {
            duration_hours: Faker::Name.name,
            description: Faker::Name.name
          }
        }
      end

      it { create and expect(response).to have_http_status(:found) }
      it { expect { create }.to change(TimeLog, :count).from(0).to(1) }
    end

    context 'when params is invalid' do
      let(:params) do
        {
          time_log: {
            duration_hours: nil,
            description: Faker::Name.name
          }
        }
      end

      it { create and expect(response).to have_http_status(:ok) }
      it { expect { create }.not_to change(TimeLog, :count) }
      it { create and expect(response).to render_template(:new) }
    end
  end
end
