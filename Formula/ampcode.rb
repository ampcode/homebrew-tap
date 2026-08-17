class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787001563-gacc318"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787001563-gacc318/amp-darwin-arm64"
      sha256 "61c36cb932b44c93467e9a58b20c984bd24bb7d1f7d3fccc314b5f768f491b8c"
    else
      url "https://static.ampcode.com/cli/0.0.1787001563-gacc318/amp-darwin-x64"
      sha256 "8b1b4cecba983b8e50b038a42902d39b60016e4481405998ebf3f7dad7479d93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787001563-gacc318/amp-linux-arm64"
      sha256 "223f8ddfc3ad377281d4c5c772a20ceb47255f0183f6f88515244be2f7006b3c"
    else
      url "https://static.ampcode.com/cli/0.0.1787001563-gacc318/amp-linux-x64"
      sha256 "6bfc3a460bb77cce7819028854e349a20861185fcfe8d83fd0e986eeb28903e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
