cask "tintify" do
  version "1.10.1"
  sha256 "5f45a3cfd74ae25690e4745faf9e01d907b8f427a955fc0bdd15f81ccfaf8711"

  url "https://github.com/notwin/Tintify/releases/download/v#{version}/Tintify-#{version}.dmg"
  name "Tintify"
  desc "一键统一所有终端 CLI 工具的配色主题"
  homepage "https://github.com/notwin/Tintify"

  depends_on macos: ">= :sonoma"

  app "Tintify.app"
  binary "#{appdir}/Tintify.app/Contents/Resources/tintify", target: "tintify"

  zap trash: [
    "~/Library/Preferences/com.notwin.Tintify.plist",
    "~/.tintify",
  ]
end
