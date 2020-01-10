class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.2.2.tar.gz"
  sha256 "5345074a913d9de6609e984ff60b23b8d6a7b1f09b1e799fa49518f46b7c68ca"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
  end

  test do
    system "false"
  end
end
