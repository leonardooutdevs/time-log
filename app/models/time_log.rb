# frozen_string_literal: true

class TimeLog < ApplicationRecord
  enum status: { pending: 0, billed: 1 }

  validates :description, :duration_hours, :status, presence: true

  after_create_commit { broadcast_prepend_to 'time_logs' }
  after_update_commit { broadcast_replace_to 'time_logs' }
  after_destroy_commit { broadcast_remove_to 'time_logs' }
end
