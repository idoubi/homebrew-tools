class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.2.0.tar.gz"
  sha256 "50854ca9ed0d2a5aa4ab18dfc67d1561606332e85096a9d634cc9a183d977d42"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
  end

  test do
    system "false"
  end
end