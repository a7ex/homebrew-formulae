class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.9.1"
  url "https://github.com/a7ex/xcresultparser/archive/1.9.1.tar.gz"
  sha256 "22f897ffe9bd55eadc85c3d4328514caaeea1e0de49f35cbf07aaea9ad9d900d"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
