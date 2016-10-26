Gem::Specification.new do |s|
  s.authors           = ["Niels Ganser"]
  s.email             = "niels@herimedia.com"
  s.extra_rdoc_files  = %w(
    CHANGELOG.md
    README.md
  )
  s.files             = Dir["lib/**/*.rb"]
  s.homepage          = "https://github.com/herimedia/work_surfer"
  s.licenses          = ["Apache-2.0"]
  s.name              = "work_surfer"
  s.summary           = "An experiemental unofficial API client for the WorkWave.com Route Manager API."
  s.version           = "0.0.2.1"

  s.add_runtime_dependency "faraday",             "~> 0.9.0"
  s.add_runtime_dependency "faraday_middleware",  ">= 0.9", "<= 0.10"
end
