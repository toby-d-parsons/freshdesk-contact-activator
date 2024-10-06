require_relative 'freshdesk_contact_activator/send_invite.rb'

module FreshdeskContactActivator
  DOMAIN = 'CHANGEME'

  def self.run
    array = ["80119490768", "80098925128"]
    array.each do |contact|
      send_invite = SendInvite.new(DOMAIN, contact)
      send_invite.get_response
    end
  end
end

app = FreshdeskContactActivator
app.run