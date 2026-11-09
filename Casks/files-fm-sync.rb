cask "files-fm-sync" do
  version "3.16.21"
  sha256 "7af8b4f516f146e153bf17986f8677723911e90aae2f42e33a5fd1a756af7c22"

  url "https://github.com/filesfm/Sync/releases/download/v#{version}/files_fm_sync-#{version}.pkg"
  name "Files.fm Sync"
  desc "Keeps local folders synchronized with your Files.fm account"
  homepage "https://github.com/filesfm/Sync"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  pkg "files_fm_sync-#{version}.pkg"

  uninstall pkgutil: "com.files.fm.sync"

  zap trash: "~/Library/Preferences/com.files.fm.sync.plist"
end
