module InnovationsHelper
  def innovation_submission_date(innovation)
    if innovation.submitted_at
      return innovation.submitted_at.strftime("%I:%M %p on %b %e, %Y IST")
    else
      return "Not yet submitted"
    end
  end
end
