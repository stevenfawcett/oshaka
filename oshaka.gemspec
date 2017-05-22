Gem::Specification.new do |s|
  s.name        = 'oshaka'
  s.version     = '0.0.0'
  s.date        = '2016-04-11'
  s.executables = %w(oshaka)


  s.summary     = "Summary"
  s.description = "Description"
  s.author      = "Steven Fawcett"
  s.email       = 'steven.fawcett@hpe.com'
  s.homepage    = 'http://shopify.github.com/oshaka'
  s.license     = "MIT"

  s.files = Dir['README.md', 'javascripts/**/*', 'templates/**/*','templates/**/.[a-z]*', 'lib/**/*']

end
