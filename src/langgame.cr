require "./langgame/*"
require "./langgame/scenes/*"

module Langgame
  def self.main
    current_scene = MainScene.new
    while !current_scene.solved?
      puts(current_scene.display_description)
      input = gets()
      action = InputParser.read(input.nil? ? "" : input)
      puts(current_scene.receive(action))
      current_scene = current_scene.next_scene
    end
  end
end

Langgame.main
