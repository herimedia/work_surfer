Gem::Specification.new do |s|
  s.authors   = ["Niels Ganser"]
  s.email     = "niels@herimedia.com"
  s.files     = Dir["lib/**/*.rb"]
  s.licenses  = ["MIT"]
  s.name      = "work_wave"
  s.summary   = "An experiemental API client for the WorkWave.com Route Manager API."
  s.version   = "0.0.1.alpha"

  s.add_runtime_dependency "faraday", "~> 0.9.0"
end
