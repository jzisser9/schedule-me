module StringId
  extend ActiveSupport::Concern

  included { before_save :generate_id }

  private

  def generate_id
    self.id ||= loop do
      token = HumanToken.generate
      break token unless self.class.exists?(id: token)
    end
  end
end
