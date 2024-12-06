class XcresultparserAT182 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.2"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.2.tar.gz"
  sha256 "760c819c386fd30c8f7083cbfd40bb84d8242ad0647a0a9ed4ed0f48a5a2e7f1"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
