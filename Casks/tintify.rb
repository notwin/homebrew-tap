cask "tintify" do
  version "1.9.4"
  sha256 "4a4136ca2db3880fa0b59e14f81e31177f6022a4616d76d2f30faaad1da1efc3"

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
