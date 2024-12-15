class XcresultparserAT183 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.3"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.3.tar.gz"
  sha256 "7b66a269132379f42617f9338892a28f5695010cb337581007ad8cf6bad7c128"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
