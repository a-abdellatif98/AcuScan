class DiagnoseXRayJob < ApplicationJob
  require 'httparty'
  require 'json' 
  require 'down'
  include Rails.application.routes.url_helpers
  queue_as :default
  
  def perform(xray) 
      getthefile = rails_blob_path(xray.image, disposition: "attachment", only_path: true)
      y = Down.download("http://acuscan.herokuapp.com/"+ getthefile)
      response = HTTParty.post("https://diagnosing.herokuapp.com/analyze_image", body: { file: y.open })
      puts response.code
      body = JSON.parse(response.body) 
      x_ray_diagnose = body["first"] + "," + body["second"] + "," + body["third"]
      xray.update(suggestion: x_ray_diagnose)
  end
end
