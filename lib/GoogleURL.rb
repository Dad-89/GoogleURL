module GoogleURL
   require 'net/http'
   require 'uri'
   require 'json'
   
   def self.c(url)
      regexp = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
      if (regexp =~ url)
         return true
      end
      return false
   end
   
   class Shorting
      def initialize(long_url)
	   if !(GoogleURL.c(long_url))
              p "#{long_url}: Is not a valid link."
              exit
           end
	   par = { #'user' => 'youruser@google.com',
                      'url' => long_url,
	              #'auth_token' => '78925814685'
                      #'key' => "your API key" }
	   res = Net::HTTP.post_form(URI.parse("http://goo.gl/api/url"), par)
           return_link = JSON.parse(res.body)
           puts return_link['short_url']
      end
   end
   
   class Expand
      def initialize(short_url)
	   if !(GoogleURL.c(short_url))
              p "#{short_url}: Is not a valid link."
	      exit
           end
	   url = "https://www.googleapis.com/urlshortener/v1/url?"
           uri = URI.parse(url + "shortUrl=" + short_url)
	   # Security check SSL do
           http = Net::HTTP.new(uri.host, uri.port)
           http.use_ssl = true
           http.verify_mode = OpenSSL::SSL::VERIFY_NONE
           # end
           request = Net::HTTP::Get.new(uri.request_uri)
           response = http.request(request)
           return_link = JSON.parse(response.body)
           puts return_link['longUrl']
      end
   end

end
