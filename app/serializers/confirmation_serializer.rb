class ConfirmationSerializer
  
  def initialize(message)
    @message = message
  end

  def info
    {
      "data": {
        "id": nil,
        "attributes": {
          "message": @message
        }
      }
    }
  end
end
