cask "tintify" do
  version "1.10.2"
  sha256 "d3733230b3f9fbd87cbf20ef8d9cb480d31910e2144fe06f7e737ece5581167b"

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
