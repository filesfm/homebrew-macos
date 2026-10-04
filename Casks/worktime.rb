cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.22"
  sha256 arm:   "cf9f479fb1f2596daf8d6165be0ded95c175c89f0642baf066090680da398740",
         intel: "0757912a4eb2cf8d68c967f698a16b0cca045b477e461f2b1dbc18fffc1f8459"

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
