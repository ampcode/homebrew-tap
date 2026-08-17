class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786939945-ged2a5a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786939945-ged2a5a/amp-darwin-arm64"
      sha256 "02f8d9b62125c582f3acd51cdf8b811ddc860ed4054afb1d913fc62d9ddf9312"
    else
      url "https://static.ampcode.com/cli/0.0.1786939945-ged2a5a/amp-darwin-x64"
      sha256 "ad1ff36b35a15aaa13e165506845393e822c848be7edab8aaa300c6e9e56c2fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786939945-ged2a5a/amp-linux-arm64"
      sha256 "89658036832b5839fd5bcff17254ac5bd76b730caef072fa81cc7dfa3ecb3f6c"
    else
      url "https://static.ampcode.com/cli/0.0.1786939945-ged2a5a/amp-linux-x64"
      sha256 "dc717aacf32ef9798b2d067623169269dfb553f16455ab87b842b4555df6545e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
