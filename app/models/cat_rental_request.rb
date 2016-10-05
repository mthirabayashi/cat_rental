class CatRentalRequest < ActiveRecord::Base
  validates :status, :cat_id, presence: true

  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED),
     message: "Not a valid status" }

  def overlapping_requests
    CatRentalRequest.where.not(id: self.id).where(cat_id: self.cat_id).where.not('(:start_date > end_date) OR (:end_date < start_date)',start_date: start_date, end_date: end_date)
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
  end

  belongs_to(
    :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat
  )
end
