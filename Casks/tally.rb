cask "tally" do
  version "1.0"
  sha256 "6e200bb8e77f0f83445a6bef1dc288a7c57f162c6354529411ec0168c5bdbb3f"

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
