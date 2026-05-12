class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778604014-g464094"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778604014-g464094/amp-darwin-arm64"
      sha256 "1d14e647adc34d2d6af414658a5ebf6f5619787d971d29922933814383adab04"
    else
      url "https://static.ampcode.com/cli/0.0.1778604014-g464094/amp-darwin-x64"
      sha256 "2536f2d286822669ad8bf1b8d1803ed48c39547850ea7ef6ea99d6ec0260a2ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778604014-g464094/amp-linux-arm64"
      sha256 "54f2dd455c2d99a370a63338b90a82a30794389cfd79597b5601050110643c97"
    else
      url "https://static.ampcode.com/cli/0.0.1778604014-g464094/amp-linux-x64"
      sha256 "212c7ce9e4c327559df0eea7b2726080d0da7752c0486d32240a7782c77552fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
