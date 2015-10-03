require 'rack'
require 'rack/server'

class PageNeverLoads
  def self.call env
    loop { }
  end
end

Rack::Server.start app: PageNeverLoads
