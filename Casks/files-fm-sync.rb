cask "files-fm-sync" do
  version "3.16.7"
  sha256 "9dd6e78b97e21afeae821730ec0d6287628a31b6af38b0c631a9858cd2d4d0f2"

  url "https://github.com/filesfm/Sync/releases/download/v#{version}/files_fm_sync-#{version}.dmg"
  name "Files.fm Sync"
  desc "Keeps local folders synchronized with your Files.fm account"
  homepage "https://github.com/filesfm/Sync"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Files.fm Sync 2025.app"

  zap trash: "~/Library/Preferences/com.files.fm.sync.plist"
end
