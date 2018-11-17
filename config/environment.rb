require 'bundler'
Bundler.require

module Concerns
end

Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }
