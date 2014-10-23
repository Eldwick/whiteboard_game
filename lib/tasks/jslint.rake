require 'jslint/tasks'

# Make sure this runs after our specs
Rake::Task[:spec].enhance do
  Rake::Task[:jslint].invoke
end

# Ensure jslint runs before our features
task 'spec:features' => :jslint

