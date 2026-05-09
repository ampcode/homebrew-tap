class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778313588-g9b12ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778313588-g9b12ae/amp-darwin-arm64"
      sha256 "49c0b162907e297f404dfe83ba36d1cf1a72f637554eef3b4b506ab7dabf8131"
    else
      url "https://static.ampcode.com/cli/0.0.1778313588-g9b12ae/amp-darwin-x64"
      sha256 "c3949891cacbee3fbe7b99e20b3089dece1f320be15d078fe3025c04bd0d9830"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778313588-g9b12ae/amp-linux-arm64"
      sha256 "a12c30759d351a93e29e10e8df0bf1b2e0a47ea43785b460879c22bf70170b50"
    else
      url "https://static.ampcode.com/cli/0.0.1778313588-g9b12ae/amp-linux-x64"
      sha256 "0a6a05adef018540438d9192371c6397bc1115c07e53dbcb7c8ebdfea775785c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
