module ApplicationHelper
  def track_ip
    loc = request.location
    visitor = Visitor.create(ip_address: request.ip, params: params,
                             longitude: loc.longitude, latitude: loc.latitude)
  end
end
