#! /usr/bin/env ruby

XCODE_PATH = File.expand_path(File.join(`xcode-select -p`.chomp, '../..'))

def open_cmd(pattern)
  files = Dir.glob(pattern)
  `open -a "#{XCODE_PATH}" "#{files.first}"` and exit if files.count == 1
end

open_cmd '*.xcworkspace'
open_cmd '*.xcodeproj'
open_cmd '*.playground'

open_cmd '.' if File.exists?('Package.swift')

puts 'No Xcode workspaces, projects, playgrounds, or packages found.'
