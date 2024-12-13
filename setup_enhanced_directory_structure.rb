# Create an enhanced comprehensive directory structure for a Ruby project with environment variables
def create_enhanced_structure(project_name)
  directories = [
    project_name,
    "#{project_name}/bin",
    "#{project_name}/config",
    "#{project_name}/config/initializers",
    "#{project_name}/lib",
    "#{project_name}/lib/#{project_name}",
    "#{project_name}/spec",
    "#{project_name}/spec/support",
    "#{project_name}/test",
    "#{project_name}/data",
    "#{project_name}/doc",
    "#{project_name}/lib/assets",  # Optional assets directory
    "#{project_name}/public",        # Optional public directory
    "#{project_name}/scripts"        # Additional scripts or utilities directory
  ]

  directories.each do |dir|
    Dir.mkdir(dir) unless Dir.exist?(dir)
  end

  # Create sample files in lib/
  File.open("#{project_name}/lib/#{project_name}.rb", 'w') do |file|
    file.write("# #{project_name.capitalize} main file\n")
  end

  File.open("#{project_name}/lib/#{project_name}/version.rb", 'w') do |file|
    file.write("# #{project_name.capitalize} version\n")
  end

  File.open("#{project_name}/lib/#{project_name}/some_class.rb", 'w') do |file|
    file.write("# Example class in #{project_name.capitalize}\n")
  end

  # Create sample test files in spec/
  File.open("#{project_name}/spec/spec_helper.rb", 'w') do |file|
    file.write("# RSpec configuration\n")
  end

  File.open("#{project_name}/spec/support/shared_examples.rb", 'w') do |file|
    file.write("# Shared examples for RSpec tests\n")
  end

  File.open("#{project_name}/spec/#{project_name}_spec.rb", 'w') do |file|
    file.write("# Tests for #{project_name.capitalize}\n")
  end

  # Create sample test files in test/
  File.open("#{project_name}/test/test_helper.rb", 'w') do |file|
    file.write("# Minitest configuration\n")
  end

  File.open("#{project_name}/test/#{project_name}_test.rb", 'w') do |file|
    file.write("# Tests for #{project_name.capitalize}\n")
  end

  # Create configuration files
  File.open("#{project_name}/config/database.yml", 'w') do |file|
    file.write("# Database configuration\n")
  end

  File.open("#{project_name}/config/settings.yml", 'w') do |file|
    file.write("# General settings\n")
  end
  
  File.open("#{project_name}/config/application.rb", 'w') do |file|
    file.write("require 'dotenv/load'\n") 
    file.write("# Load environment variables from .env\n")
    file.write("Dotenv.load\n")
  end
  
  File.open("#{project_name}/config/initializers/example_initializer.rb", 'w') do |file|
    file.write("# Example initializer\n")
  end

  # Create documentation files
  File.open("#{project_name}/doc/index.md", 'w') do |file|
    file.write("# Documentation Index\n")
  end

  File.open("#{project_name}/doc/usage.md", 'w') do |file|
    file.write("# Usage Instructions\n")
  end
  
  File.open("#{project_name}/doc/api.md", 'w') do |file|
    file.write("# API Documentation\n")
  end

  # Create the .env file for environment variables
  File.open("#{project_name}/.env", 'w') do |file|
    file.write("# Environment variables\n")
    file.write("DATABASE_URL=your_database_url_here\n")
    file.write("API_KEY=your_api_key_here\n")
    file.write("OTHER_SETTING=your_setting_here\n")
  end

  # Create other essential files
  File.open("#{project_name}/Gemfile", 'w') do |file|
    file.write("source 'https://rubygems.org'\n\n")
    file.write("gem '#{project_name}'\n")
    file.write("gem 'dotenv'      # For loading environment variables from .env\n")
    file.write("gem 'rspec'       # For testing with RSpec\n") 
    file.write("gem 'rake'        # For task management\n") 
  end

  File.open("#{project_name}/Rakefile", 'w') do |file|
    file.write("# Rake tasks for #{project_name.capitalize}\n")
  end

  File.open("#{project_name}/README.md", 'w') do |file|
    file.write("# #{project_name.capitalize}\n\n")
    file.write("## Description\n\nA brief description of your project.\n")
    file.write("\n## Environment Variables\nRefer to the `.env` file for required environment variables.\n")
    file.write("\n## Setup Instructions\nInstructions on how to set up the project locally.\n");
    file.write("\n## Running Tests\nInstructions on how to run tests.\n");
    
  
end

# Call additional methods to create config.ru and executable script
def create_config_file(project_name)
   File.open("#{project_name}/config.ru", 'w') do |file|
      file.puts "require './lib/#{project_name}'"
      file.puts "run MyProject::Application"
   end
end


def create_executable_script(project_name)
   File.open("#{project_name}/bin/start_app", 'w', chmod:0755) do |file|
      file.puts "#!/usr/bin/env ruby"
      file.puts "require_relative '../lib/#{project_name}'"
      file.puts "puts \"Starting #{project_name.capitalize}...\""
   end
end


# Usage: Call the method with your desired project name
create_enhanced_structure("my_project")

# Call additional methods to create config.ru and executable script
create_config_file("my_project")
create_executable_script("my_project")

puts "Enhanced directory structure for 'my_project' created successfully!"
