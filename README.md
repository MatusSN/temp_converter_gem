# TempConverterGem
**THIS GEM WILL NOT RECEIVE FUTURE UPDATES.**

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add temp_converter_gem

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install temp_converter_gem

## Usage
```ruby
# accepted scales -> :kelvin, :celsius, :fahrenheit

require 'temp_converter_gem'

# Convert 68 degrees Fahrenheit to Celsius
celsius = TempConverterGem::Convert.to_celsius(:fahrenheit, 68)
puts "68 degrees Fahrenheit is #{celsius} degrees Celsius"

# Convert 20 degrees Celsius to Fahrenheit
fahrenheit = TempConverterGem::Convert.to_fahrenheit(:celsius, 20)
puts "20 degrees Celsius is #{fahrenheit} degrees Fahrenheit"

# Convert 0 degrees Celsius to Kelvin
kelvin = TempConverterGem::Convert.to_kelvin(:celsius, 0)
puts "0 degrees Celsius is #{kelvin} Kelvin"



```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MatusSN/temp_converter_gem
