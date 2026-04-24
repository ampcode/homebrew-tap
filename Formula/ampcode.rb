class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777026701-gd887d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777026701-gd887d5/amp-darwin-arm64"
      sha256 "89b79582fdb269474b32c4ba28b8729db7959cce7f3ccf4ca141eb9e5165877c"
    else
      url "https://static.ampcode.com/cli/0.0.1777026701-gd887d5/amp-darwin-x64"
      sha256 "bc5afe978bfdf3f21578daad532d385dbc183135452cb290959ac1cff60315b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777026701-gd887d5/amp-linux-arm64"
      sha256 "f4df479d3a0cd9b58afa2979e0f6c97ff5fec9d974b773cf2718b87bd5e5bdb7"
    else
      url "https://static.ampcode.com/cli/0.0.1777026701-gd887d5/amp-linux-x64"
      sha256 "6497714d92dfbf4eef59bbfcd467520dc6625f9f6acb29c7a3ff3d42afbbf58b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
