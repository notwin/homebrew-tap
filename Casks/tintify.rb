cask "tintify" do
  version "1.5.0"
  sha256 "76ec3d232eff5b0e65e317da681b87ddfd1b0d16ab9b4bc4861b9ee9099a397d"

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
