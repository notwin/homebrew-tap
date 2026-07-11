cask "tintify" do
  version "1.10.0"
  sha256 "5afa17bcc060671c8d750d6af559f653823a6de41cb50ae65c62aa93b2b44f70"

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
