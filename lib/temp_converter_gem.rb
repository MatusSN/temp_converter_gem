# frozen_string_literal: true

require_relative "temp_converter_gem/version"

module TempConverterGem
  class Convert 
    class << self 
      def to_celsius(scale, temp)
        case scale 
        when :fahrenheit, :f 
          return (temp - 32) / 1.8 
        when :kelvin, :k
          return (temp - 273.15)
        else 
          raise ArgumentError, "Invalid scale"
        end 
      end 
       
      def to_fahrenheit(scale, temp)
        case scale 
        when :celsius, :c 
          return (temp * 1.8) + 32 
        when :kelvin, :k
          return ((temp - 273.15) * 1.8) + 32
        else 
          raise ArgumentError, "Invalid scale"
        end
      end 

      def to_kelvin(scale, temp)
        case scale 
        when :fahrenheit, :f 
          return temp + 273.15
        when :celsius, :c 
          return ((temp - 32) / 1.8) + 273.15
        else 
          raise ArgumentError, "Invalid scale"
        end 
      end 
    end 
  end
end
