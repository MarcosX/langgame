require "./action"

module InputParser

  @@intent_database = {
    "move" : ["ir para"],
    "interact" : ["ver"]
  }

  @@object_database = ["mesa"]

  def self.read(input : String) : Action
    input_intent = find_intent(input)
    target = find_target(input)
    Action.new(input_intent, target)
  end

  private def self.find_target(input : String) : String
    @@object_database.find("") do |object|
      input.includes?(object)
    end
  end

  private def self.find_intent(input : String) : String
    input_intent = ""
    @@intent_database.each do |intent, actions|
      next unless input_intent.empty?
      input_intent = intent.to_s if actions.find do |action|
        input.starts_with?(action)
      end
    end
    input_intent
  end
end
