class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778718002-g664bf7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778718002-g664bf7/amp-darwin-arm64"
      sha256 "02c7b537070b7aa7889b47348d3c75a3de3f5f210683b1b17804d700cad40e83"
    else
      url "https://static.ampcode.com/cli/0.0.1778718002-g664bf7/amp-darwin-x64"
      sha256 "f0b1c7999aafd922d7f9fe386708d856a187cce04311150f6d5b47208d5ee908"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778718002-g664bf7/amp-linux-arm64"
      sha256 "55a3b2c27df44dc04177c974a6cf0732849f303c07fd608fa850add8df10f394"
    else
      url "https://static.ampcode.com/cli/0.0.1778718002-g664bf7/amp-linux-x64"
      sha256 "f39ed1125e71b6229fa77d8f890b672dc5d75a38661d06d92bf29c421242486c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
