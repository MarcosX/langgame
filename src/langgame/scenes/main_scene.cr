require "./scene"

class MainScene < Scene
  def initialize
    @next_scene = uninitialized MainScene
  end

  def display_description : String
    "Você acorda num quarto pequeno iluminado apenas pela luz da lua que entra em pequenas frestas na parede. No centro da sala você vê uma mesa de madeira torta devido ao peso de uma caixa de madeira mal posicionada em cima dela. Ao fundo você vê a penumbra de um armário grande em um dos cantos da sala e, logo ao lado, uma grande porta de madeira com ferrolhos de ferro. O que você quer fazer?\n"
  end

  def next_scene : Scene
    @next_scene
  end

  def receive(action : Action)
    @next_scene = MainScene.new
    "Hmm... acho que você não pode fazer isso...\n\n"
  end
end
