class HueHandler

  HUES = [56100, 25500, 65280, 46920, 36210]

  def self.response(body)
    begin
      client = Hue::Client.new
    rescue Hue::NoBridgeFound
      # transition_color
      retry
    end
    lights = client.lights[7]
    client.lights.each do |light|
    case
      when body == "On"
        light.on = true
      when body == "Off"
        light.on = false
      when body == "Pink"
        light.hue = 56100
      when body == "Green"
        light.hue = 36210
      when body == "Red"
        light.hue == 36210
      when body == "Party Mode"
        light.hue == 56100
        transition_time = 1
        light.hue == 36210
        transition_time = 1
        light.hue = 46920
      end
    end
  end

end
