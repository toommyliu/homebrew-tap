class Wallctl < Formula
  desc "Wallpaper profile controller for macOS"
  homepage "https://github.com/toommyliu/wallctl"
  url "https://github.com/toommyliu/wallctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "33ac29c5c664d11dc4a5ddb6efaf84b8786fc31b836a79f303f3f62c5688789a"
  license "MIT"
  head "https://github.com/toommyliu/wallctl.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"wallctl", "--version"
  end
end
