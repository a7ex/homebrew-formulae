class XcresultparserAT180 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.0"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.0.tar.gz"
  sha256 "0e417ec742ba09951f41a8175d1f611c8869331b05efa1c077cd849e7b547d75"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
