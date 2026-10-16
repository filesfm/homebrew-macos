cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.4"
  sha256 arm:   "5cec0e9ea151781ea7a9f20d09680246109f08bbc90636965c26f03b5ab852e7",
         intel: "d8ebcd1268fb58c7e20680374641b15272d24510f4ba4bcd5b67c748f45dc96f"

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
