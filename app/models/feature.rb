class Feature < ApplicationRecord
  enum status: {
    not_started: "not_started",
    in_progress: "in_progress",
    complete: "complete"
  }

  belongs_to :project
end
