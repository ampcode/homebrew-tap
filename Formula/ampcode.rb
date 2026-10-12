class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791806555-g425e34"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791806555-g425e34/amp-darwin-arm64"
      sha256 "eef4c9d1f7a1eff97d43dd927cd28753c96cd14cb381eda013017f66f68db00a"
    else
      url "https://static.ampcode.com/cli/0.0.1791806555-g425e34/amp-darwin-x64"
      sha256 "2a3cdd40febb73c9f60579202741156c2636b6a57a00c2685905c456b064740e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791806555-g425e34/amp-linux-arm64"
      sha256 "cd578d4edf3d36279795b4c355b753047d38113e6b7fd02769797c2fb10a1305"
    else
      url "https://static.ampcode.com/cli/0.0.1791806555-g425e34/amp-linux-x64"
      sha256 "4b4f04668b51ca3d449631ec340288fedb994e7a1979d51aabaf5983b236f845"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
