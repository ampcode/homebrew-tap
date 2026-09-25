class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790319499-g89b070"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790319499-g89b070/amp-darwin-arm64"
      sha256 "8bc90468427fa88c12e3a5ac756fc505c006499a409b6cf72f56480e5334d483"
    else
      url "https://static.ampcode.com/cli/0.0.1790319499-g89b070/amp-darwin-x64"
      sha256 "9aed63361f0aef5732ba6964c5add80f43b75ca9702a6257cfe97fd6387c1608"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790319499-g89b070/amp-linux-arm64"
      sha256 "18312ff4e871a5d9e5cd0956abef43b74f833d1204874be41dd4093d09764acc"
    else
      url "https://static.ampcode.com/cli/0.0.1790319499-g89b070/amp-linux-x64"
      sha256 "3eb49c2ba934464e0be4a60b284a5dcb44332ad64e17e8671750af45140e5e54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
