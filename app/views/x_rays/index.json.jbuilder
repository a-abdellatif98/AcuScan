# frozen_string_literal: true

json.array! @x_rays, partial: 'x_rays/x_ray', as: :x_ray
