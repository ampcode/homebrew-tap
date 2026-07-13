class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783933214-g6a3c71"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783933214-g6a3c71/amp-darwin-arm64"
      sha256 "dec092d48a61c9243410b2cc52fa2960f5129105fc232036623c8533fdc58358"
    else
      url "https://static.ampcode.com/cli/0.0.1783933214-g6a3c71/amp-darwin-x64"
      sha256 "1a12d21cab5f755c7aabc45a8a514e9d2960de4d00f33d786173b26ca93c59a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783933214-g6a3c71/amp-linux-arm64"
      sha256 "0e26badbef72c6deadef13f52bd53edc3606eb2ad56359e8d2ab34477df71e8f"
    else
      url "https://static.ampcode.com/cli/0.0.1783933214-g6a3c71/amp-linux-x64"
      sha256 "df435479c393a1798a0e25c3266611b0f84d824ccb12dff10690bfe7357d70a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
