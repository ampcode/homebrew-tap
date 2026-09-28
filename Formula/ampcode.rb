class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790598051-g7ace76"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790598051-g7ace76/amp-darwin-arm64"
      sha256 "747ceca176add4197e5cef510a75d4e69b61552fbb0364fb5bde191a4ac35770"
    else
      url "https://static.ampcode.com/cli/0.0.1790598051-g7ace76/amp-darwin-x64"
      sha256 "73e1f98d71d92242440bbf9c6b267f2ee72672ecc6a940b5e5fd8c67b510a38a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790598051-g7ace76/amp-linux-arm64"
      sha256 "343f3e9cced9979b632ccd450b849f94aba343889bdd4498ae8aa3ca5412e1a3"
    else
      url "https://static.ampcode.com/cli/0.0.1790598051-g7ace76/amp-linux-x64"
      sha256 "ea3db79b5b893106735d63aa86dd7714809656f39f6c748de234da3e5d629c5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
