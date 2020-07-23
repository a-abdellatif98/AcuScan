class AddSuggestionToXRays < ActiveRecord::Migration[6.0]
  def change
    add_column :x_rays, :suggestion, :string

  end
end
