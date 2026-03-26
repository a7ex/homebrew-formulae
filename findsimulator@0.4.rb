class FindsimulatorAT04 < Formula
  desc "Compute 'destination' for xcodebuild command line tool to build Xcode projects."
  homepage "https://github.com/a7ex/findsimulator"
  version "0.4.0"
  url "https://github.com/a7ex/findsimulator/archive/0.4.tar.gz"
  sha256 "c83ef83933d6d9a0b147dab21179f145f3aecd39724a2ad365cc90ef943a31ae"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/findsimulator -h")
    assert output.start_with?("OVERVIEW: Interface to simctl in order to get suitable strings for destinations for the xcodebuild command."), "Expected output to start with 'OVERVIEW: Interface to simctl in order to get suitable strings for destinations for the xcodebuild command.', but got: #{output}"
  end

end
