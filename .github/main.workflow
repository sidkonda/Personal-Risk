workflow "Risk Standup Weekly Action" {
  resolves = ["cycle-weekly-meeting"]
  on = "schedule(30 22 * * 1)"
}

action "cycle-weekly-meeting" {
  uses = "./weekly-meeting"
  secrets = ["GITHUB_TOKEN"]
}
