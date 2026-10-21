cask "files-fm-sync" do
  version "3.16.8"
  sha256 "9db3bc8faff1b344c11be4369b4f8e9962233f222922cd4ec607e723709a3500"

  url "https://github.com/filesfm/Sync/releases/download/v#{version}/files_fm_sync-#{version}.dmg"
  name "Files.fm Sync"
  desc "Keeps local folders synchronized with your Files.fm account"
  homepage "https://github.com/filesfm/Sync"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Files.fm Sync 2027.app"

  zap trash: "~/Library/Preferences/com.files.fm.sync.plist"
end
