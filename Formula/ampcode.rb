class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784106548-gd81d8b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784106548-gd81d8b/amp-darwin-arm64"
      sha256 "b5c169c8de8ba8aa4fe1af5b51d390b686ecc1a90834f9b7fe348f5a46ac0fd5"
    else
      url "https://static.ampcode.com/cli/0.0.1784106548-gd81d8b/amp-darwin-x64"
      sha256 "42d391cc11b334ce87a0b6480aa86adbc650a5da75d53f73e30c2db0fa48f1a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784106548-gd81d8b/amp-linux-arm64"
      sha256 "0a9ed5741201a6ff6ec92585a9d8782c52361fc9e967ec2ba0e6372972c0a16e"
    else
      url "https://static.ampcode.com/cli/0.0.1784106548-gd81d8b/amp-linux-x64"
      sha256 "0c60eb16356ddba67a2d0f0b4f084d471b1f2a3692e8ebbc17f331c49a28ad2b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
