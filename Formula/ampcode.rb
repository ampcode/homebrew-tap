class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779639467-g6d0650"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779639467-g6d0650/amp-darwin-arm64"
      sha256 "aaba1352e7480655f6b370c2dd1e57d940eccb5c03c2c8cd2f709f479d2184ae"
    else
      url "https://static.ampcode.com/cli/0.0.1779639467-g6d0650/amp-darwin-x64"
      sha256 "67662a638db6d0e22063fdb5f7737d25d1b2e13741cd7cbfcd08d4f0c1c085ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779639467-g6d0650/amp-linux-arm64"
      sha256 "b06b2f60f85ce48599f7fd813bcfe48502eb3ba50ebdc9723bcb8d8ba73ad374"
    else
      url "https://static.ampcode.com/cli/0.0.1779639467-g6d0650/amp-linux-x64"
      sha256 "8b285349f8c06bc831a319c553853e402fed12a3963b81c7b18cde489be73b12"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
