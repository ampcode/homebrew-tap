class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793433646-gfaad62"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793433646-gfaad62/amp-darwin-arm64"
      sha256 "34a56be6340c804b9c5148fbbee189e6701a62be57a38df1c7be603a88ab26ba"
    else
      url "https://static.ampcode.com/cli/0.0.1793433646-gfaad62/amp-darwin-x64"
      sha256 "2444a1457e62d581e8f83a8f0f06be0a27e625c024654cd15e47b782c9630383"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793433646-gfaad62/amp-linux-arm64"
      sha256 "c29a092d368d1c3ac3606953766336b35d69313446fb529dacc04532e7272a70"
    else
      url "https://static.ampcode.com/cli/0.0.1793433646-gfaad62/amp-linux-x64"
      sha256 "de6cfa0d4bd96cd179f95fa279c5fb4c56e6644a17e238ded62ba7ce3614c551"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
