require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

LoadedYaml = ['en', 'en-bork'].inject({}) do |h, locale|
  h[locale] = YAML.load_file(File.expand_path(File.dirname(__FILE__) + "/../lib/locales/#{locale}.yml"))[locale]['faker']
  h
end

class TestLocale < Test::Unit::TestCase
  def teardown
    Faker::Config.locale = nil
  end

  def test_india
    Faker::Config.locale = 'in'

    puts "Name = #{Faker::Name.name}"
    puts "Girls Name = #{Faker::Name.girls_name}"
    puts "Boys Name = #{Faker::Name.boys_name}"
    puts "Title = #{Faker::Name.title}"

    puts "Street Name =  #{Faker::Address.street_name}"
    puts "Street Address =  #{Faker::Address.street_address}"
    puts "Secondary Address =  #{Faker::Address.secondary_address}"
    puts "State Abbreviation = #{Faker::Address.state_abbr}"
    puts "State =  #{Faker::Address.state}"
    puts "City Prefix = #{Faker::Address.city_prefix}"
    puts "City = #{Faker::Address.city}"
    puts "Post Code = #{Faker::Address.postcode}"
    puts "Country = #{Faker::Address.country}"
    puts "Phone Number = #{Faker::PhoneNumber.phone_number}"
    puts "Company Name = #{Faker::Company.company_name}"
  end
end
