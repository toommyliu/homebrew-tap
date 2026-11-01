class Dux < Formula
  desc "Fast disk usage explorer for understanding what is taking space"
  homepage "https://github.com/toommyliu/dux"
  url "https://github.com/toommyliu/dux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8e15cf238b5c52d38b0da6fbf4289c52b8a03fce447c3b75c8614c713f402608"
  license "MIT"
  head "https://github.com/toommyliu/dux.git", branch: "main"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"dux", "--help"
  end
end
