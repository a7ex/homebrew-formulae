class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  # url "https://github.com/a7ex/xcresultparser.git",
  #    tag: "1.0.2", revision: "9977b9f765fca377755e378188ee8bc0e7e057d0"
  version "1.0.4"
  url "https://github.com/a7ex/xcresultparser/archive/1.0.4.tar.gz"
  sha256 "3d732552a7af37c17966f8f6b2e95fd7d07efa126f3e14745ce2ed426f063573"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
