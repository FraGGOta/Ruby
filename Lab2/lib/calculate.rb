class Calculate
  def initialize(arr)
    @arr = arr
  end

  def search_max(ibc)
    @arr[ibc][1..@arr[ibc].length].max { |a, b| a.to_f <=> b.to_f }.to_f
  end

  def search_min(ibc)
    @arr[ibc][1..@arr[ibc].length].min { |a, b| a.to_f <=> b.to_f }.to_f
  end

  def average(ibc)
    sum = @arr[ibc][1..@arr[ibc].length].inject { |x, n| x.to_f + n.to_f }
    (sum / (@arr[ibc].length - 1)).round(2)
  end

  def dispersion(ibc, avr_val)
    obj = @arr[ibc][1..@arr[ibc].length].map { |x| (x.to_f - avr_val)**2 }
    sum = obj.inject { |x, n| x + n }
    (sum / (@arr[ibc].length - 1)).round(2)
  end
end
