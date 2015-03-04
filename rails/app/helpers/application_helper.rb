module ApplicationHelper
  def track_ip
    loc = request.location
    visitor = Visitor.create(ip_address: request.ip, params: params,
                             longitude: loc.longitude, latitude: loc.latitude)
  end

  def ban_ip
    if request.ip == "108.5.63.162"
      flash[:error] = "Stop Vandalizing My Site"
      redirect_to "/"
    end
  end
end
