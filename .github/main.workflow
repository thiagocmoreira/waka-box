workflow "Update gist with WakaTime stats" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/waka-box@master"
  secrets = [
    "GH_TOKEN",
    "WAKATIME_API_KEY",
  ]
  env = {
    GIST_ID = "e601e33d44c5d3193864a9afc19cd9f3"
  }
}
