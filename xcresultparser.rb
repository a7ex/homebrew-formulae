class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  # url "https://github.com/a7ex/xcresultparser.git",
  #    tag: "1.0.2", revision: "9977b9f765fca377755e378188ee8bc0e7e057d0"
  version "1.1.2"
  url "https://github.com/a7ex/xcresultparser/archive/1.1.2.tar.gz"
  sha256 "985801392cfb4e68ae6c29a300b9bb68da4a30a7ca160466f0e46a135872d68a"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
