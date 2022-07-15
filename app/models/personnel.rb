class Personnel < ApplicationRecord
    has_many :jobs, dependent: :destroy

    validates :name, :surname, presence: true
    validates :maintenance_unit, inclusion: { in: ['Admin', 'Aircon', 'Electrical', 'Plumbing', 'Masonry', 'Carpentry', 'Welding', 'Painting']}
    validates :position, inclusion: { in: ['Engineer', 'Aircon-Tech', 'Electrician', 'Plumber', 'Mason', 'Carpenter', 'Welder', 'Painter']}

end
