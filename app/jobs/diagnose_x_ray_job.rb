class DiagnoseXRayJob < ApplicationJob
  require 'httparty'
  require 'json' 

  
  queue_as :default
  
  def perform(xray) 
    
    #x_ray_diagnose = here wh want a http request to the other server     
    response = xray.image.open { |file| HTTParty.post("https://diagnosing.herokuapp.com/analyze_image", body: { file: file }) } 
    body = JSON.parse(response.body) 
    x_ray_diagnose = body["first"] + "," + body["second"] + "," + body["third"]
    xray.update(suggestion: x_ray_diagnose)
  end
end
