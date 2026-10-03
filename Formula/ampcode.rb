class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791000415-gfae848"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791000415-gfae848/amp-darwin-arm64"
      sha256 "c282479e8e568ab6e61892a49e2685e29a7c7ed9c639a0239cfd253009daacd5"
    else
      url "https://static.ampcode.com/cli/0.0.1791000415-gfae848/amp-darwin-x64"
      sha256 "01dff033dc8c1b03f959eae6bb9e5ee46875fb28fd66f49056c8b23a73af09ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791000415-gfae848/amp-linux-arm64"
      sha256 "b0af3e189aaad63b966ea301c70492d83424be050bfb62aa4fecf544fc2b4d12"
    else
      url "https://static.ampcode.com/cli/0.0.1791000415-gfae848/amp-linux-x64"
      sha256 "5e5b766cc22d7d55be078956af11a745160c4daae928e33c4194731731f4a418"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
