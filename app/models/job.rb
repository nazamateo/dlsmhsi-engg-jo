class Job < ApplicationRecord
    belongs_to :requestor, class_name: 'User', foreign_key: 'requestor', required: true
    belongs_to :assessor, class_name: 'Personnel', foreign_key: 'assessor', required: true
    belongs_to :staff, class_name: 'Personnel', foreign_key: 'staff', required: true

    validates :description, length: { in: 10..80 }
    validates :maintenance_unit, inclusion: { in: ['Admin', 'Aircon', 'Electrical', 'Plumbing', 'Masonry', 'Carpentry', 'Welding', 'Painting', 'Outside']}
    validates :status, inclusion: { in: ['Pending', 'Ongoing', 'Onhold', 'Done', 'Cancel']}
    validates :remarks, length: { maximum: 20 }
end
