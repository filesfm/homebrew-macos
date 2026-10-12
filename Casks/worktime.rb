cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "f42f37fac8dd5e811bd5d2172ea8e91e50e283641d98bc52297ae21e4747b77e",
         intel: "6c11c958ada6f5d4dc6b9c70683e2da5496adf0abbec42d42deeceb365b6ac97"

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
