class Action

  def initialize
    @intent = ""
    @target = ""
  end

  def initialize(intent : String, target : String)
    @intent = intent
    @target = target
  end

  def intent : String
    @intent
  end

  def target : String
    @target
  end

  def to_s
    "an action"
  end
end
