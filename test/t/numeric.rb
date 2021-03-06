##
# Numeric ISO Test

assert('Numeric', '15.2.7') do
  assert_equal Numeric.class, Class
end

assert('Numeric superclass', '15.2.7.2') do
  assert_equal Numeric.superclass, Object
end

assert('Numeric#+@', '15.2.7.4.1') do
  assert_equal(+1, +1)
end

assert('Numeric#-@', '15.2.7.4.2') do
  assert_equal(-1, -1)
end

assert('Numeric#abs', '15.2.7.4.3') do
  assert_equal(1.abs, 1)
  assert_equal(-1.abs, 1.0)
end

# Not ISO specified

assert('Numeric#**') do
  assert_equal 2.0**3, 8.0
end
