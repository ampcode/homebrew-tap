class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787069050-gdadfff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787069050-gdadfff/amp-darwin-arm64"
      sha256 "7d88eb9a69bb097588cc0ef11140c2cedde3f103ea3ab0b8f0930540a925a4d8"
    else
      url "https://static.ampcode.com/cli/0.0.1787069050-gdadfff/amp-darwin-x64"
      sha256 "ca52eca04cd0942ca8e653e9399d460c8b439a389111f63c7de52da28d450900"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787069050-gdadfff/amp-linux-arm64"
      sha256 "65b23690b336f6c401799f1b840d8a475bf8085bc9bae531963b6578f2f5b58d"
    else
      url "https://static.ampcode.com/cli/0.0.1787069050-gdadfff/amp-linux-x64"
      sha256 "a9a44a760fd246ffbbc60d287dcadf206b8dddc0b6d745942545612332a655c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
