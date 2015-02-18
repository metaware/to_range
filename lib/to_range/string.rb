class StringToRangeConversionFailed < StandardError; end

class String

  def to_range
    str = scan(/\d+\.{2,3}\d+/).first
    if str
      dots = str.count('.')
    else
      raise StringToRangeConversionFailed
    end
    three_dots = (dots == 3)
    arr = three_dots ? str.split('...') : str.split('..')
    first = arr.first.to_i
    last = arr.last.to_i
    three_dots ? first...last : first..last
  end

end