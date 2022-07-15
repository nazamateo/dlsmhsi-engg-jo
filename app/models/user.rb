class User < ApplicationRecord
  enum role: [:admin, :requestor]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :requestor
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs, dependent: :destroy

  validates :name, :surname, :position, :unit, presence: true
  validates :service, inclusion: { in: ['Admin Services', 'Finance Services', 'Hospital Operations', 'Academics', 'Research', 'Lasallian Misson, Linkages and Advancement']}
end
