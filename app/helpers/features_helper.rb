module FeaturesHelper
  def status_color(feature)
    if feature.in_progress?
      "bg-orange-200 text-orange-600"
    elsif feature.not_started?
      "bg-gray-200 text-gray-600" 
    elsif feature.complete?
      "bg-green-300 text-green-700" 
    else
      "text-gray-800"
    end
  end
end
