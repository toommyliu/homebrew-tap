cask "perch" do
  version "1.0"
  sha256 "1b98f03675e8667aa76ac913cdf0da3ee68ca7377dedc054dc4538fa0c51ef63"

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
