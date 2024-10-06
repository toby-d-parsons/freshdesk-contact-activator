require "net/http"
require "uri"
require "json"

class SendInvite
  API_KEY = File.read('api.key').strip

  def initialize(freshdesk_domain, contact_id)
    @contact_id = contact_id
    @freshdesk_domain = freshdesk_domain
  end

  def freshdesk_uri
    URI("https://#{@freshdesk_domain}/api/v2/contacts/#{@contact_id}/send_invite")
  end

  def build_request
    request = Net::HTTP::Put.new(freshdesk_uri, { 'Content-Type' => 'application/json' })
    request.basic_auth(API_KEY, "X")
    request.body = request_payload.to_json
    request
  end

  def request_payload
    {} # This would be the body of request if applicable
  end

  def get_response
    http = Net::HTTP.new(freshdesk_uri.host, freshdesk_uri.port)
    http.use_ssl = (freshdesk_uri.scheme == "https")
    response = http.request(build_request)
    puts response.code # 204 is standard response. If anything else, should print error into the csv? Cannot highlight incorrect IDs as no return
    # puts response.body # This would be applicable if there was a body to the request, and an expected return
  end
end