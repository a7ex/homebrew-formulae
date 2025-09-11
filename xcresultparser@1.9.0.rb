class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.9.0"
  url "https://github.com/a7ex/xcresultparser/archive/1.9.0.tar.gz"
  sha256 "45ebdb55b5b161ac5a01042239fcf789eac62eac291042dc73c6ed6e4a1d7249"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
