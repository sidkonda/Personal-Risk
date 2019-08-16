workflow "Risk Standup Weekly Action" {
  resolves = ["cycle-weekly-meeting"]
  on = "schedule(0 20 * * 5)"
}

action "cycle-weekly-meeting" {
  uses = "./weekly-meeting"
  secrets = ["GITHUB_TOKEN"]
}
