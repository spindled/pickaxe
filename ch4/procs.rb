# Procs can be closures... they can use local variables
# from the surrounding scope
def power_proc_generator
  value = 1
  lambda {value += value}
end

power_proc_1 = power_proc_generator
puts power_proc_1.call
puts power_proc_1.call
puts power_proc_1.call