cask "worktime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.21"
  sha256 arm:   "efcbdaae409ce4fa05986370e30497c62f54f58d868363f3cb16d5b42e4a5451",
         intel: "71f9a2ff4407ab9aa4ba553b204488173deb34dc32c24bbafb256e81ba7fbc9a"

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
