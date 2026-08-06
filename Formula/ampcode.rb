class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786019606-geb05a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786019606-geb05a8/amp-darwin-arm64"
      sha256 "abdf867dd13f11350b63176c10a651d0e632b9c27930fdd98b10070057be795a"
    else
      url "https://static.ampcode.com/cli/0.0.1786019606-geb05a8/amp-darwin-x64"
      sha256 "f3ef517b5d8a5a3c97a26bc5fcee0683b8976d61820aa3c87994e8f81b5489fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786019606-geb05a8/amp-linux-arm64"
      sha256 "a4f8d4b904fa38181f6bcafe06422ecd6cf518f4224f3907a462ef3588c89e35"
    else
      url "https://static.ampcode.com/cli/0.0.1786019606-geb05a8/amp-linux-x64"
      sha256 "1932d156eaafb5329a0e1bfe7d0fc154af288cbafc908b3015a58b022008bcc9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
