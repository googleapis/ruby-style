# Copyright 2019 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "bundler/gem_tasks"

task :release, :tag do |_t, args|
  tag = args[:tag]
  raise "You must provide a tag to release." if tag.nil?

  # Verify the tag format "PACKAGE/vVERSION"
  m = tag.match(/v(?<version>\S*)/)
  raise "Tag #{tag} does not match the expected format." if m.nil?

  version = m[:version]
  raise "You must provide a version." if version.nil?

  api_token = ENV["RUBYGEMS_API_TOKEN"]

  require "gems"
  ::Gems.configure { |config| config.key = api_token } if api_token

  Bundler.with_clean_env do
    sh "rm -rf pkg"
    sh "bundle update"
    sh "bundle exec rake build"
  end

  path_to_be_pushed = "pkg/#{version}.gem"
  raise "Cannot build google-style for version #{version}" unless File.file? path_to_be_pushed
  begin
    ::Gems.push File.new(path_to_be_pushed)
    puts "Successfully built and pushed google-style for version #{version}"
  rescue StandardError => e
    puts "Error while releasing google-style version #{version}: #{e.message}"
  end
end

namespace :kokoro do
  task :load_env_vars do
    service_account = "#{ENV['KOKORO_GFILE_DIR']}/service-account.json"
    ENV["GOOGLE_APPLICATION_CREDENTIALS"] = service_account
    filename = "#{ENV['KOKORO_GFILE_DIR']}/env_vars.json"
    env_vars = JSON.parse File.read(filename)
    env_vars.each { |k, v| ENV[k] = v }
  end

  task :release do
    version = "0.1.0"
    Bundler.with_clean_env do
      version = `bundle exec gem list`
                .split("\n").select { |line| line.include? "ruby-style" }
                .first.split("(").last.split(")").first || "0.1.0"
    end
    Rake::Task["kokoro:load_env_vars"].invoke
    Rake::Task["release"].invoke "v/#{version}"
  end
end

def header str, token = "#"
  line_length = str.length + 8
  puts ""
  puts token * line_length
  puts "#{token * 3} #{str} #{token * 3}"
  puts token * line_length
  puts ""
end
