class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "2.0.0-beta"
  url "https://github.com/a7ex/xcresultparser/archive/2.0.0-beta.tar.gz"
  sha256 "fc83481c924289c4aff6213719958811f4218659eb37dac043333e3d7547a920"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end