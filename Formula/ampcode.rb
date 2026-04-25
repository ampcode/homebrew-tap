class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777144048-gff4795"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777144048-gff4795/amp-darwin-arm64"
      sha256 "e3dc00046eda1b20b562615594cc2fd23b3bde90ed21e7c7b014c7a8630fd63d"
    else
      url "https://static.ampcode.com/cli/0.0.1777144048-gff4795/amp-darwin-x64"
      sha256 "6287c4c3d549ba59ac67368389c33cc595e7dd0c94f06894a706e381351a0843"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777144048-gff4795/amp-linux-arm64"
      sha256 "76833ea984b8e0da65db1748781eb363fbc7cb6048eadec336865caf0169769f"
    else
      url "https://static.ampcode.com/cli/0.0.1777144048-gff4795/amp-linux-x64"
      sha256 "d1c87d80ac29fc275eda6cc05c5b31958bc5428d9ff466cbea2ef015a17a8088"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
