class ValidatePassword
  MAX_LENGTH = 24

  def initialize(password)
    @password = password
  end

  def perform
    return false unless @password.match?(/[A-Z]/) 
    return false unless @password.match?(/\d/) 
    return false unless @password.match?(/[^A-Za-z0-9]/)
    return false if @password.match?(/(.)\1\1/)
    return false if @password.length > MAX_LENGTH

    true
  end
end