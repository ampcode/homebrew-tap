class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780909758-g2d38be"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780909758-g2d38be/amp-darwin-arm64"
      sha256 "4c656774a9941217184192510c7c4408f7d7112e394c32b478197229dec08f6f"
    else
      url "https://static.ampcode.com/cli/0.0.1780909758-g2d38be/amp-darwin-x64"
      sha256 "ca7ab009753a33777e0deb18d7b4540241dcfdbc82e010c73b7bbe1a49d53227"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780909758-g2d38be/amp-linux-arm64"
      sha256 "c86848635dd259935981098f2e912eb5ecb807d0d3f241e027c9c59e671b8195"
    else
      url "https://static.ampcode.com/cli/0.0.1780909758-g2d38be/amp-linux-x64"
      sha256 "1b7488d8aa621ff09ad24bad5ee8331300c71516d089daecaa5d8be67104d6a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
