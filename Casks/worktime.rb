cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.7"
  sha256 arm:   "8ef47d6d8ffa39f81743ef073ad2a5757d9b969e32a52482caa4fb46e87aaab2",
         intel: "edbcddf4df9b8273f90b07ee900f139a2df308d8aecadf6a8ccc5765068d4f46"

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
