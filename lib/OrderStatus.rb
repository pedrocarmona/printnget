module OrderStatus
  WAITING = 0
  PENDING = 1
  CANCELLED = 2
  ABORTED = 3 
  COMPLETED = 4
  DELIVERED = 5

  def self.list
    Hash[self.constants.sort.collect { |constant| [constant.to_s.titleize, const_get(constant)] }]
  end

  def self.name(val)
    constants.find { |constant| const_get(constant) == val }.to_s.titleize
  end
end