cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.10"
  sha256 arm:   "518933f7d828917dc62af134c3641ea07fd2940a1471cb6b9d7b35530ec15965",
         intel: "fa8090ee930efb0a8965c6b79378b0bfea3f3eee712df7bcdfdfbb096edee89b"

  url "https://github.com/filesfm/WorkTime/releases/download/v#{version}/worktime-v#{version}-#{arch}.dmg"
  name "WorkTime"
  desc "Qt6/QML desktop time tracker"
  homepage "https://github.com/filesfm/WorkTime"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WorkTime.app"

  zap trash: "~/Library/Preferences/fm.files.Worktime.plist"
end
