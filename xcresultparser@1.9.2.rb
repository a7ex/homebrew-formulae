class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.9.2"
  url "https://github.com/a7ex/xcresultparser/archive/1.9.2.tar.gz"
  sha256 "310106d2a51a545371e7ba4b70526c66c6e2515ac42a786b423d8f4751439381"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
