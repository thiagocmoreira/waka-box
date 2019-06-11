workflow "Update gist with WakaTime stats" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/waka-box@master"
  env = {
    "GIST_ID" = "f398c3d98d7b93b9a02ca39138a25498"
  }
  secrets = [
    "GH_TOKEN",
    "WAKATIME_API_KEY",
  ]
}
