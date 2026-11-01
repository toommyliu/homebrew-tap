cask "perch" do
  version "1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/toommyliu/Perch/releases/download/v#{version}/Perch-#{version}.zip"
  name "Perch"
  desc "Calendar for the menu bar"
  homepage "https://github.com/toommyliu/Perch"

  depends_on macos: :sonoma

  app "Perch.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Perch.app"], must_succeed: false
  end
end
