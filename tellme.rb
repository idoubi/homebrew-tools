class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.3.2.tar.gz"
  sha256 "350d22eb086412b7b8799cad7076e4bc1b987f384c7a1507812c89758ce7de47"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
    system "cp", "festival.json", bin/"festival.json"
  end

  test do
    system "false"
  end
end
