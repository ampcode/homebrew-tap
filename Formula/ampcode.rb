class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785646934-g35813b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785646934-g35813b/amp-darwin-arm64"
      sha256 "1dff91e4d43ab060c5493b0e8c1025514cf0d6daa07938304d3a8ed02c00fa00"
    else
      url "https://static.ampcode.com/cli/0.0.1785646934-g35813b/amp-darwin-x64"
      sha256 "d0a321fc731834fe5816c63f34ddad902f290dc43bebe7b9fab7387a7d77609a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785646934-g35813b/amp-linux-arm64"
      sha256 "5d17fbf4fb6eb77c78eebb4dc3b4d5977cb60a04dd2be33db68f97e7d2e94112"
    else
      url "https://static.ampcode.com/cli/0.0.1785646934-g35813b/amp-linux-x64"
      sha256 "a58d124152de779bf404669f1590fc25d9d1f6d42f426ff83d1ee170cfdde436"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
