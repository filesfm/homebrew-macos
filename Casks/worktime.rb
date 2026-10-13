cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "4191e85ac7f08c5c67ed050f0c195caf5445c159f0591edfffd3b38f4bfa02e9",
         intel: "d3681a7656153ee80207381fc586cf2a7a09b0e192e6a936f858d21d0efb7d6c"

  url "https://github.com/filesfm/WorkTime/releases/download/v#{version}/worktime-v#{version}-#{arch}.dmg"
  name "WorkTime"
  desc "Tracks how you spend your work time"
  homepage "https://github.com/filesfm/WorkTime"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WorkTime.app"

  zap trash: "~/Library/Preferences/fm.files.Worktime.plist"
end
