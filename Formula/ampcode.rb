class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782883713-gb6c9af"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782883713-gb6c9af/amp-darwin-arm64"
      sha256 "62927908b246ed0eae5de2176397ce2df6466c7cbba8b938dfa9ba729d1844b1"
    else
      url "https://static.ampcode.com/cli/0.0.1782883713-gb6c9af/amp-darwin-x64"
      sha256 "b41e1cdca18f0ce9fe81149745ae5ee077a9ba054ab67af72990b5340fa29870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782883713-gb6c9af/amp-linux-arm64"
      sha256 "96419d7d56e035276b0740e1d9fdebf3f48f09c7985d0a0724d728a187e4ce16"
    else
      url "https://static.ampcode.com/cli/0.0.1782883713-gb6c9af/amp-linux-x64"
      sha256 "22eff8b8f8b28c4cfcb1a043bee527b7cd8af8101929f358c9581add095eff97"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
