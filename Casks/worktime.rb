cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.6"
  sha256 arm:   "88e2f6aed82f72f36ebbfc640f8fe8c16daf08d7a73f3eb9e241319b95ab2e06",
         intel: "9a01bf713f3f6dbaf12285f0e196a051d8c2c0699c106d66db255f27f7997563"

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
