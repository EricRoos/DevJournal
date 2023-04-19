class Feature < ApplicationRecord
  enum status: {
    not_started: "not_started",
    in_progress: "in_progress",
    complete: "complete"
  }

  enum size: {
    small: "small",
    medium: "medium",
    large: "large",
  }

  belongs_to :project
end
