desc "raw coffee script run"
task :coffee do	

    require "coffee_script"
    puts CoffeeScript.compile File.read "test.coffee"	
    
end

desc "run coffee script with tilt"
task :tilt do	
			
    require 'tilt'
    puts Tilt.new( 'test.coffee' ).render	
	
end

desc "get everything with sprockets"
task :sprockets do
		
    require 'sprockets'	
	
    env = Sprockets::Environment.new.tap do |e|
        e.append_path '.'
    end
	
    puts env[ 'application.js' ]
		
end

task :default => :sprockets