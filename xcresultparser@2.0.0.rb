class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "2.0.0"
  url "https://github.com/a7ex/xcresultparser/archive/2.0.0.tar.gz"
  sha256 "c579a8937dffe24e00d0ac1f5275dd87d8dddd244c7df71db2bf64eaf1bf5ebf"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
