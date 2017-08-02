require 'cucumber'
require 'cucumber/rake/task'

task :check_reports_directory do
    def create_directory(directory)
        if not File.directory?(directory)
            puts "#{directory} directory does not exist"
            Dir.mkdir(directory)
        end
        return
    end

    create_directory("reports")
end

task :acceptance_test => [:check_reports_directory, :features]

task default: :acceptance_test

Cucumber::Rake::Task.new(:features) do |t|
    #t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
    #otherwise we pull from the defined profiles in cucumber.yml
end

Cucumber::Rake::Task.new(:firefox_features) do |t|
    #t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
    #otherwise we pull from the defined profiles in cucumber.yml
    t.cucumber_opts = "--profile firefox"
end

Cucumber::Rake::Task.new(:ie_features) do |t|
    #t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
    #otherwise we pull from the defined profiles in cucumber.yml
    t.cucumber_opts = "--profile ie"
end

Cucumber::Rake::Task.new(:headless_features) do |t|
    #t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
    #otherwise we pull from the defined profiles in cucumber.yml
    t.cucumber_opts = "--profile headless"
end