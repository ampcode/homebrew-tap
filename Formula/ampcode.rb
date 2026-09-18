class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789741130-gdf32e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789741130-gdf32e2/amp-darwin-arm64"
      sha256 "899104b3d2583d6b52f24cbcd5fbce4e21dce3e8737f91fb286c20ccbebc20b6"
    else
      url "https://static.ampcode.com/cli/0.0.1789741130-gdf32e2/amp-darwin-x64"
      sha256 "5250aee2221f05283adf6374f5e10d9737f226a241b30d5c33e093732cb8ac5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789741130-gdf32e2/amp-linux-arm64"
      sha256 "a6706456fcfef940d81028b9430880ddf5d99bafd2dbf03b7259e780b47b7287"
    else
      url "https://static.ampcode.com/cli/0.0.1789741130-gdf32e2/amp-linux-x64"
      sha256 "be24c8735e11b19c37c3736d00c5b5dfeb8a2bb599ea854654aecb68d282e4ad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
