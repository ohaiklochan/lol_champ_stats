
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lol_champ_stats/version"

Gem::Specification.new do |spec|
  spec.name          = "lol_champ_stats"
  spec.version       = LolChampStats::VERSION
  spec.authors       = ["'Chloe Steffens'"]
  spec.email         = ["'caforonda103@yahoo.com'"]

  spec.summary       = %q{This gem gives out information about all champions in League of Legends}
  spec.description   = %q{This gem specifically tells the user about each champion as well as all of their abilites.Champions span a variety of roles and blend a variety of fantasy tropes, such as sword and sorcery, steampunk, and Lovecraftian horror. Although the discrete nature of each match prohibits an overarching narrative in-game, the various champions make up a large and ever-evolving fictional universe developed by Riot Games through short stories, comics, cinematics, and books.}
  spec.homepage      = "https://github.com/ohaiklochan/lol_champ_stats.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = "https://github.com/ohaiklochan/lol_champ_stats.git"
  #   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'require_all'
  spec.add_dependency "json"
  spec.add_dependency "httparty"
end
