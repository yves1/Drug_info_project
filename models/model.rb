class Drug
  attr_accessor :desc, :method, :effects, :price, :deathrate, :img
  def initialize(desc, method, effects, price, deathrate, img)
#     @drug = [{:drugname => "MDMA", :effects => "Euphoric and empathogenic", :desc }]
    @desc = desc
    @method = method
    @effects = effects
    @price = price
    @deathrate = deathrate
    @img = img
  end
end