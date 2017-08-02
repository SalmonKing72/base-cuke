# basic cucumber skeleton on windows

### Installation: Open a terminal and run...
- `choco install ruby --version 2.3.3 -y`
- `choco install ruby2.devkit -y`
- `cd c:\tools\DevKit2`
- `ruby dk.rb init`
- modify the `c:\tools\DevKit2config.yml` file to include `c:\tools\ruby23`
- `ruby dk.rb install`
- `choco install chromedriver -y`
- `choco install selenium-ie-driver -y`
- `gem install bundler`
- `bundle install`

### Run tests: Open a terminal and run...
- `rake`
- or you can run tests directly in your IDE

### helpful devdoc links
- cukes.info
- https://github.com/cheezy/page-object
- https://github.com/grosser/parallel_tests
- https://github.com/cucumber/cucumber/wiki