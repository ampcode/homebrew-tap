class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779914344-gc4b641"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779914344-gc4b641/amp-darwin-arm64"
      sha256 "d5d9a7e4dd807254fedd449ae1f861b30b6a264f9a57b6b069d4d1ede73c0504"
    else
      url "https://static.ampcode.com/cli/0.0.1779914344-gc4b641/amp-darwin-x64"
      sha256 "aa826731d5b6eeaa51a38c9738842ab737c145e8928471e2ba802656d410e2af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779914344-gc4b641/amp-linux-arm64"
      sha256 "92245a0af8db3e811d2bd065f5e1a0106fc3bc5f6fa6ebd07d6076e5bb34a958"
    else
      url "https://static.ampcode.com/cli/0.0.1779914344-gc4b641/amp-linux-x64"
      sha256 "939f52eddd2447429c239e3ea34917dedf3b0557661d5cea2d8b80400ecd7caa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
