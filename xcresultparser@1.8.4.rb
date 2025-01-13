class XcresultparserAT184 < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.8.4"
  url "https://github.com/a7ex/xcresultparser/archive/1.8.4.tar.gz"
  sha256 "7f9b14e9705fef17b1d9c7050e209f7f84ab3f35ed3d9359a3c0bf1f14f90f89"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
