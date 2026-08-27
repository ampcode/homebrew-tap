class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787810366-g2503d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787810366-g2503d7/amp-darwin-arm64"
      sha256 "69e25b34c78e95b11b2bbb5d3882d00af399c6934d9e21d63106443b1987e818"
    else
      url "https://static.ampcode.com/cli/0.0.1787810366-g2503d7/amp-darwin-x64"
      sha256 "a5bd0cd854238b9948a628fbd1ca4e030ba8d1765ce58efef54e8f425df20359"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787810366-g2503d7/amp-linux-arm64"
      sha256 "4f908e155de438c8303a9a1d9685999a4f2f10e4866e7b187890013a6214ae59"
    else
      url "https://static.ampcode.com/cli/0.0.1787810366-g2503d7/amp-linux-x64"
      sha256 "12fabf4de235b93be011cd132eea941403b19a5f8f81c640e1a28d6f4bc78d6d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
