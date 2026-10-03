class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791060199-g5bacb8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791060199-g5bacb8/amp-darwin-arm64"
      sha256 "001761e6a5c7f683b292f0a05233b68e2aa38c73bf83c8102c56a46a01cc7a0a"
    else
      url "https://static.ampcode.com/cli/0.0.1791060199-g5bacb8/amp-darwin-x64"
      sha256 "a96c4aef59db322caf2a2dbc58bc458914e6baf60532406728bd0c5d3c686377"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791060199-g5bacb8/amp-linux-arm64"
      sha256 "fe10044349a9592e169aa24e0b3488da8fe4208b92f7afeae4aff4d4444daae6"
    else
      url "https://static.ampcode.com/cli/0.0.1791060199-g5bacb8/amp-linux-x64"
      sha256 "9eb4311859a492a675c4a7387fc4ad263e799cbdcb5dc9b8b392f804f387f04b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
