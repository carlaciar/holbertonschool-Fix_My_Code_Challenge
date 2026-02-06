###
#
#  Sort integer arguments (ascending)
#
###

result = []

ARGV.each do |arg|
  # skip if not integer
  next unless arg =~ /^-?\d+$/

  i_arg = arg.to_i
  inserted = false

  result.each_with_index do |val, i|
    if i_arg < val
      result.insert(i, i_arg)
      inserted = true
      break
    end
  end

  result << i_arg unless inserted
end

puts result
