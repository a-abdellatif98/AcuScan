class Report < ApplicationRecord
    has_many :x_rays
    has_many :visits
end
