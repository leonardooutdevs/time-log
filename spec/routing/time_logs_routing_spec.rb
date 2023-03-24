require 'rails_helper'

RSpec.describe TimeLogsController do
  describe 'routing' do
    it { expect(get: '/time_logs').to route_to('time_logs#index') }
  end
end
