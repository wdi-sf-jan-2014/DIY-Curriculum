#<Typhoeus::Response:0x0000010a2e6598
 @options=
  {:httpauth_avail=>0,
   :total_time=>0.578013,
   :starttransfer_time=>0.57773,
   :appconnect_time=>0.473474,
   :pretransfer_time=>0.473513,
   :connect_time=>0.152977,
   :namelookup_time=>0.061473,
   :effective_url=>
    "https://www.readability.com/api/content/v1/parser?url=www.facebook.com/&token=2e371692e3f7e9fd04045befb46b38364db35326",
   :primary_ip=>"107.22.216.178",
   :response_code=>400,
   :redirect_count=>0,
   :return_code=>:ok,
   :response_headers=>
    "HTTP/1.1 400 BAD REQUEST\r\nContent-Type: text/plain\r\nDate: Wed, 26 Feb 2014 18:16:42 GMT\r\nP3P: CP='Legacy Only. Go to https://readability.com/about/terms/ for full terms.'\r\nServer: nginx/1.4.3\r\nVary: Authorization, Cookie\r\nContent-Length: 125\r\nConnection: keep-alive\r\n\r\n",
   :response_body=>
    "{\"messages\": \"The url parameter passed does not look like a valid URL. Please check your data and try again.\", \"error\": true}",
   :debug_info=>#<Ethon::Easy::DebugInfo:0x0000010a2f5d40 @messages=[]>},
 @request=
  #<Typhoeus::Request:0x0000010a2f6e70
   @base_url=
    "https://www.readability.com/api/content/v1/parser?url=www.facebook.com/&token=2e371692e3f7e9fd04045befb46b38364db35326",
   @on_complete=[],
   @on_failure=[],
   @on_headers=[],
   @options=
    {:method=>:get,
     :headers=>
      {"User-Agent"=>"Typhoeus - https://github.com/typhoeus/typhoeus"},
     :maxredirs=>50},
   @original_options={:method=>:get},
   @response=#<Typhoeus::Response:0x0000010a2e6598 ...>>>