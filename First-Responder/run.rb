
require 'octokit'

NWO = ENV["GITHUB_REPOSITORY"]
ISSUE_TEMPLATE = File.read(File.join(File.dirname(__FILE__), "template.md"))

client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
client.auto_paginate = true

client.add_comment(NWO, 32 , ISSUE_TEMPLATE, {})

