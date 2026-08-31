class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788209835-ga42c93"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788209835-ga42c93/amp-darwin-arm64"
      sha256 "6790f5f929901acff8abdd0d0389dcb654a777f209c64015a9a2291413a88ddc"
    else
      url "https://static.ampcode.com/cli/0.0.1788209835-ga42c93/amp-darwin-x64"
      sha256 "66c605371e604d62c9ea7686675464bc12d9d91b9cc5809a57bee0d6e315d812"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788209835-ga42c93/amp-linux-arm64"
      sha256 "38e1ec129747764b96dbba0ee1113e5884a8dca7567736abeb7c0f86010e97d2"
    else
      url "https://static.ampcode.com/cli/0.0.1788209835-ga42c93/amp-linux-x64"
      sha256 "82911e7c517809ac68dfdd8ada7c913eec4c2acd144943a41387549d7ce2cb50"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
