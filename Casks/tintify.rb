cask "tintify" do
  version "1.9.1"
  sha256 "457d88a976fdc6c7fd6f03dbe48faba84a4a933ad6ab75f2667f51ba974eda2f"

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
