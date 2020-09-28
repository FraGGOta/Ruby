class Converter
  def convert(value, scale, new_scale)
    return nil if scale == new_scale

    case scale
    when 'C'
      case new_scale
      when 'K'
        value + 273.15
      when 'F'
        value * 1.8 + 32
      end

    when 'K'
      case new_scale
      when 'C'
        value - 273.15
      when 'F'
        value * 1.8 - 459.67
      end

    when 'F'
      case new_scale
      when 'C'
        (value - 32) / 1.8
      when 'K'
        (value + 459.67) / 1.8
      end
    end
  end
end
