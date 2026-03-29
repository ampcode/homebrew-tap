class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774814610-ge37f36"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774814610-ge37f36/amp-darwin-arm64"
      sha256 "83de111fe12c50eb9c0e6af6c0210cc82fe5f647f75882d5c2e2f64b186ed311"
    else
      url "https://static.ampcode.com/cli/0.0.1774814610-ge37f36/amp-darwin-x64"
      sha256 "2395c96c5b52dc5fc25cd7a5f8aee0e1e40a77b14ed77f189c239515b360eb17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774814610-ge37f36/amp-linux-arm64"
      sha256 "c16b2536dd2bba23ab551b23aada4f8e9c5e381c27dfb1923f9b9195a5a7c9be"
    else
      url "https://static.ampcode.com/cli/0.0.1774814610-ge37f36/amp-linux-x64"
      sha256 "4ccd8bf01e4c062f908a6d882209554bb0b68cab5100705b5c5646797ef42697"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
