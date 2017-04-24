phonebook = {
  'Alberta' => '403',
  'Manitoba' => '204',
  'Nova Scotia' => '902',
  'Ontario' => '416',
  'Nunavut' => '867',
  'Quebec' => '418',
  'Yukon' => '867',
  'British Columbia' => '236'
}

def lookUp(data, city)
  data.each { |k, v| puts "#{city}\'s area code is #{v}" if k == city }
end

isRunning = true

loop do
  puts "Please input province name."
  promp = gets.chomp
  if promp == "exit"
    isRunning = false
  elsif phonebook.has_key?(promp.capitalize)
    phonebook.each { |k, v| puts "#{k}" }
    lookUp(phonebook, promp.capitalize)
  else
    puts "Invalid input"
  end
  break if isRunning == false
end
