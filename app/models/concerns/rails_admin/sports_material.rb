module RailsAdmin::SportsMaterial
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :id
        field :title
        field :description
        field :price
        field :image
      end

      show do
        field :id
        field :title
        field :description
        field :price
        field :image
      end

      edit do
        field :title
        field :description
        field :price
        field :image
      end

      create do
        field :title
        field :description
        field :price
        field :image
      end
    end
  end
end
