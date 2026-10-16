cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.5"
  sha256 arm:   "c3fb11c73e66a5c5719f9278e35bda2c0e14e24b8bf1eebee512c8c06017333e",
         intel: "e693e9c1b392ef0f0f3f5e8680a08a76a21f9677825c1fb3c6553049b710d8f5"

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
