class Calculate
  def search_max(arr)
   max = arr[0]
    (0..arr.length - 1).each do |i|
      max = arr[i] if max.split(',')[1].to_i < arr[i].split(',')[1].to_i
    end
    max
  end

  def search_min(arr)
    min = arr[0]
    (0..arr.length - 1).each do |i|
      min = arr[i] if min.split(',')[1].to_i > arr[i].split(',')[1].to_i
    end
    min
  end

  def calculate_average(arr)
    sum = 0
    (0..arr.length - 1).each do |i|
      sum += arr[i].split(',')[1].to_f
    end
    sum / arr.length
  end

  def calculate_correct_sample_variance(arr)
    sample_mean = calculate_average(arr)
    sum = average_sum_of_difference(arr, sample_mean)
    average = sum / arr.length
    (arr.length.to_f / (arr.length - 1.to_f)) * average
  end

  def average_sum_of_difference(arr, sample_mean)
    sum = 0
    (0..arr.length - 1).each do |i|
      sum += (arr[i].split(',')[1].to_f - sample_mean)**2
    end
    sum.to_f
  end
end
