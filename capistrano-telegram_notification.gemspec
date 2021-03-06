# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/telegram_notification/version'

Gem::Specification.new do |spec|
  spec.name = "capistrano-telegram_notification"
  spec.version = Capistrano::TelegramNotification::VERSION
  spec.authors = ["Nithin Saji"]
  spec.email = ["nithin111@gmail.com"]
  spec.summary = %q{Notify Capistrano deployment to Telegram.}
  spec.description = %q{Notify Capistrano deployment to Telegram.}
  spec.homepage = "https://github.com/diadara/capistrano-telegram_notification"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "telegram-bot-ruby", "~> 0.8"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
