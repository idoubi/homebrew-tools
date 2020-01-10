class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.3.1.tar.gz"
  sha256 "c0c9271b04a7e2c4a6789ea147e0470f879ca4dea2b39ab1ef3bf57d89001944"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
    system "cp", "festival.json", bin/"festival.json"
    system "ln", "-s", bin/"festival.json", "/usr/local/bin/festival.json"
  end

  test do
    system "false"
  end
end
