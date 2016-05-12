class Ingredient < ActiveRecord::Base
  has_many :doses
  validates :name, presence: true, uniqueness: true
  before_destroy :safe_destroy

  private

  def safe_destroy
    return true if self.doses.count == 0
    raise 'Cannot destroy ingredient - remaining doses'
  end

end
