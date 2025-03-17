class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.5"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.5.tar.gz"
  sha256 "47011cd0bb3ad217780274555af50fe38f03d8e9deb4fe03ed7a3c1e782deb59"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
