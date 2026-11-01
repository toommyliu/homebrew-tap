cask "ente-menubar" do
  version "1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/toommyliu/ente-menubar/releases/download/v#{version}/EnteMenubar-#{version}.zip"
  name "Ente Auth Menubar"
  desc "Menu bar client for Ente Auth codes"
  homepage "https://github.com/toommyliu/ente-menubar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "EnteMenubar.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/EnteMenubar.app"], must_succeed: false
  end
end
