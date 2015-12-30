MRuby::Gem::Specification.new('demsgpack') do |spec|
  spec.license = 'MIT'
  spec.author  = 'Masato Ikeda'
  spec.summary = 'demsgpack'
  spec.bins    = ['demsgpack']

  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
  spec.add_dependency 'mruby-io', :mgem => 'mruby-io'
  spec.add_dependency 'mruby-msgpack', :mgem => 'mruby-msgpack'
  spec.add_dependency 'mruby-json', :mgem => 'mruby-json'
  spec.add_dependency 'mruby-yaml', :mgem => 'mruby-yaml'
  spec.add_dependency 'mruby-getopts', :mgem => 'mruby-getopts'
end
