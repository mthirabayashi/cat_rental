class Cat  < ActiveRecord::Base

  COLORS = %w(Blue Green Pink Purple Black)
  validates :name, presence: true
  validates :sex, inclusion: { in: %w(M F),
     message: "Not a valid gender" }
 validates :color, inclusion: { in: COLORS,
    message: "Not a valid color" }

  has_many(
    :cat_rentals,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat,
    :dependent => :destroy
  )
end
