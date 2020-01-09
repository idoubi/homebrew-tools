class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.2.1.tar.gz"
  sha256 "7676e11022b18724707cd36d24f25874922df1c587466cf6db35474ceb2c77e3"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
  end

  test do
    system "false"
  end
end
