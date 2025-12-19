class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.9.4"
  url "https://github.com/a7ex/xcresultparser/archive/1.9.4.tar.gz"
  sha256 "1d316fbed0ed1df76f434b6231a8f3d3ee71904e1ee415380974094891107f2c"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
