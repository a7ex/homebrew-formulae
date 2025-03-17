class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.5"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.5.tar.gz"
  sha256 "f46082063569a0ef0ef07668bb724705573fc06b34d7897041d92b7314123abe"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
