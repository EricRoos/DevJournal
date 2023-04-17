class Project < ApplicationRecord
  belongs_to :user
  validates_presence_of :user, :title
  after_commit :update_cache_keys, on: :update

  def update_cache_keys
    Rails.cache.write([Project, :cache_key, self.id], self.updated_at)
  end

  def self.cached_find(id)
    updated_at = Rails.cache.read([Project, :cache_key, id])
    project = nil

    if !updated_at
      project = Project.find(id)
      updated_at = project.updated_at
      project.updated_cache_keys
    end

    Rails.cache.fetch([Project, :cached, id, updated_at]) do
      project ||= Project.find(id)
    end
  end
end
