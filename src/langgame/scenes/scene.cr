require "../action"
require "./main_scene"

class Scene

  def initialize
    @next_scene = uninitialized Scene
  end

  def display_description : String
    "No description"
  end

  def receive(action : Action) : String
    action.to_s
  end

  def next_scene : Scene
    @next_scene ? Scene.new : @next_scene
  end

  def solved? : Bool
    false
  end
end
