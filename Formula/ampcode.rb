class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788163246-g49b3c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788163246-g49b3c3/amp-darwin-arm64"
      sha256 "d1f81f59da1a2a5e9e2d730024fba59869b4e33dc95a5f2870f820184893a1d3"
    else
      url "https://static.ampcode.com/cli/0.0.1788163246-g49b3c3/amp-darwin-x64"
      sha256 "3543f73139c12cde93f56861b7066a5c9fe241865d8ea49bd0575dd4c1117928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788163246-g49b3c3/amp-linux-arm64"
      sha256 "cd398669e6754c7b135175173b9e9597549f5c579e70823514afa6da17571c2c"
    else
      url "https://static.ampcode.com/cli/0.0.1788163246-g49b3c3/amp-linux-x64"
      sha256 "8b6cc902c833631025a6c6bd2913c5be54e352ab417d5ef26e21837201929136"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
