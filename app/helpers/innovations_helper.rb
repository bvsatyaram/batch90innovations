module InnovationsHelper
  def innovation_submission_date(innovation)
    innovation.submitted_at.strftime("%I:%M %p on %b %e, %Y IST")
  end
end
