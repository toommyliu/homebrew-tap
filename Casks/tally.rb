cask "tally" do
  version "1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/toommyliu/Tally/releases/download/v#{version}/Tally-#{version}.zip"
  name "Tally"
  desc "Task manager built on Apple Reminders"
  homepage "https://github.com/toommyliu/Tally"

  depends_on macos: :sonoma

  app "Tally.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Tally.app"], must_succeed: false
  end
end
