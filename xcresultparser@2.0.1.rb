class XcresultparserAT201 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "2.0.1"
  url "https://github.com/a7ex/xcresultparser/archive/2.0.1.tar.gz"
  sha256 "cd479e6770abf4c390d01ebca7d4727db79d00244351b5adbb2aab2e4d247d01"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
