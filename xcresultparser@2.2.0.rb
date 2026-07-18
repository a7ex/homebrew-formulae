class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "2.2.0"
  url "https://github.com/a7ex/xcresultparser/archive/2.2.0.tar.gz"
  sha256 "6e3d1dbaf7f575380adf2bd4c3a0a24389873a0c7d03d23c4794be37e4f36a7b"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
