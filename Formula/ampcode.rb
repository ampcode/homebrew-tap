class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776760235-g65b009"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776760235-g65b009/amp-darwin-arm64"
      sha256 "76bf6067f73b2293112b3fa389f0bda992ffc3b377f6020c3d3a61145a64e52a"
    else
      url "https://static.ampcode.com/cli/0.0.1776760235-g65b009/amp-darwin-x64"
      sha256 "ba8c05eb9454b21d721a71491de48e3ee4b19116531ac48e21573822bdb12a0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776760235-g65b009/amp-linux-arm64"
      sha256 "5ac22321460dc6fea926990a7ef300885a59af6a81ff37b2181e9cc1978e955a"
    else
      url "https://static.ampcode.com/cli/0.0.1776760235-g65b009/amp-linux-x64"
      sha256 "4a1b18d88339ff3dadabe6981fc34f92e0270c9989b1d392e1c6c05fbe396189"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
