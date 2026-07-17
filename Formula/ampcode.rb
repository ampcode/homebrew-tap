class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784284609-g9b6163"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784284609-g9b6163/amp-darwin-arm64"
      sha256 "13bf1dbc2151b408a340695e632879554b2cc2de4a442f6df9fcd2c6db5c69b8"
    else
      url "https://static.ampcode.com/cli/0.0.1784284609-g9b6163/amp-darwin-x64"
      sha256 "8ca3aee7ef56340c4e4405ab79348f11c790fe51ef303672d69cb48bddeab5ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784284609-g9b6163/amp-linux-arm64"
      sha256 "174f100a08c88d6c81b3d3f532c7575538dbcdbb7a14e2c869e6201702191cd2"
    else
      url "https://static.ampcode.com/cli/0.0.1784284609-g9b6163/amp-linux-x64"
      sha256 "51e2d7582d06f14c1325e817adc6f728a86411a20954762245dbed311944564a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
