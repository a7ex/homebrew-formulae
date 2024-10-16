class XcresultparserAT181 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.1"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.1.tar.gz"
  sha256 "6644f6f75eb334cdc09d20acb141ff797d3d60f9fdd37c638a1a14771f941ea0"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
