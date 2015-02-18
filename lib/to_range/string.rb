class ToRangeParseFailed < StandardError; end

class String

  def to_range
    str = scan(/\d+\.{2,3}\d+/).first
    dots = str.count('.')
    if dots > 3
      raise ToRangeParseFailed
    end
    three_dots = (dots == 3)
    arr = three_dots ? str.split('...') : str.split('..')
    first = arr.first.to_i
    last = arr.last.to_i
    three_dots ? first...last : first..last
  end

end