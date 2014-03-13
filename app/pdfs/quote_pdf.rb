class OrderPdf < Prawn::Document
  def initialize
    super
    text "Order \##{@quote.id}"
  end

end
