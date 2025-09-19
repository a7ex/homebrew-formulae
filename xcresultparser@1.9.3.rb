class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.9.3"
  url "https://github.com/a7ex/xcresultparser/archive/1.9.3.tar.gz"
  sha256 "7573d3554ea0d73deb8b13e5b524a70be3f5fa43a9cc4f3aea52c3927020a533"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
