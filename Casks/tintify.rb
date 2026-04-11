cask "tintify" do
  version "1.3.0"
  sha256 "8aa58a3b18c6b1559bce952b86211d832acdb0e066a5996b1628b1a1383c0566"

  url "https://github.com/notwin/Tintify/releases/download/v#{version}/Tintify-#{version}.dmg"
  name "Tintify"
  desc "一键统一所有终端 CLI 工具的配色主题"
  homepage "https://github.com/notwin/Tintify"

  depends_on macos: ">= :sonoma"

  app "Tintify.app"

  zap trash: [
    "~/Library/Preferences/com.notwin.Tintify.plist",
    "~/.tintify",
  ]
end
