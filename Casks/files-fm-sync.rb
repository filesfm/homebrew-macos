cask "files-fm-sync" do
  version "3.16.7"
  sha256 "57390383fddc8a3f73b4b0876aa7543d7648ccd349026ce6ab4d17ed9198c3fa"

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
