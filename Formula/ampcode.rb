class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787871856-g1d9c4e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787871856-g1d9c4e/amp-darwin-arm64"
      sha256 "683845bab289e40bec26f79dcab59def81fbe1a10f3b800e3a0a70aecfd174df"
    else
      url "https://static.ampcode.com/cli/0.0.1787871856-g1d9c4e/amp-darwin-x64"
      sha256 "85e9dd5dba7f55f06bb6311dd04d7090abb42241642616e20ce26938c1200b5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787871856-g1d9c4e/amp-linux-arm64"
      sha256 "b64a0e4d95e55668abcd563356b136f9df091f970f4d1b89eae6ca07bda22a09"
    else
      url "https://static.ampcode.com/cli/0.0.1787871856-g1d9c4e/amp-linux-x64"
      sha256 "9b086dc205e151c5ac6591527cddd3cf8cc5420ec216596130f68778ae373d96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
