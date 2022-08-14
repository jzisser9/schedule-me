class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  before_save :generate_id

  default_scope { order(created_at: :asc) }

  def generate_id
    self.id ||= loop do
      token = HumanToken.generate
      break token unless self.class.exists?(id: token)
    end
  end
end
