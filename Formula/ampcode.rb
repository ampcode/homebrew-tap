class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776989558-g854fcb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776989558-g854fcb/amp-darwin-arm64"
      sha256 "8d858e82055a80d014f0c3271b09e66e43612114f2de99d452ebfcc603e94574"
    else
      url "https://static.ampcode.com/cli/0.0.1776989558-g854fcb/amp-darwin-x64"
      sha256 "fe44eead6ddad6414898642eeb77a1a845af80221257e9ce1258c47cf198c79d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776989558-g854fcb/amp-linux-arm64"
      sha256 "de40c302773d6da0444a557d7901450eccaba8d081854daa1ece0b027ab84a33"
    else
      url "https://static.ampcode.com/cli/0.0.1776989558-g854fcb/amp-linux-x64"
      sha256 "acea3406c30c48b2c20c66d2979bb8baf961f6b35ff621f60f90f316b1f59c92"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
