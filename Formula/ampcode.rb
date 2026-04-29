class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777480150-gfba48c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777480150-gfba48c/amp-darwin-arm64"
      sha256 "b54cb80fb44964eabf5847cd60c6562247e7feeda956992a1bfcbe97221fd2bb"
    else
      url "https://static.ampcode.com/cli/0.0.1777480150-gfba48c/amp-darwin-x64"
      sha256 "02009018ba10c14aa197176837fb35cdd2c1a26b3111143b9f01c855d0dd9de7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777480150-gfba48c/amp-linux-arm64"
      sha256 "125329496e4cb1cc6faf5353cbf2c668e6a0a0e1aa020f72334441bb9fdc2819"
    else
      url "https://static.ampcode.com/cli/0.0.1777480150-gfba48c/amp-linux-x64"
      sha256 "6d3aa49516e71a6123fd3153aa83ea207e132f8255c5e1111078fb85438caf3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
