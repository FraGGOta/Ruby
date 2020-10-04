class Calculate
  def search_max(arr)
    max = arr[0][1].to_f
    (0..arr.length - 1).each do |i|
      max = arr[i][1].to_f if arr[i][1].to_f > max
    end
    max
  end

  def search_min(arr)
    min = arr[0][1].to_f
    (0..arr.length - 1).each do |i|
      min = arr[i][1].to_f if arr[i][1].to_f < min
    end
    min
  end

  def average(arr)
    average = 0.0
    (0..arr.length - 1).each do |i|
      average += arr[i][1].to_f
    end
    (average / arr.length).round(2)
  end

  def dispersion(arr)
    n = arr.length.to_f
    coefficient = n / (n - 1.0)
    average = average(arr)
    result = 0.0
    (0..n - 1).each do |i|
      result += (arr[i][1].to_f - average)**2
    end
    (result * coefficient).round(2)
  end
end
