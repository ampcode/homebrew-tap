class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794355255-g66076e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794355255-g66076e/amp-darwin-arm64"
      sha256 "dabf6eaf9b807c862f561cdf59c36c690b4a1708b98428de0ec8fca11e21adf3"
    else
      url "https://static.ampcode.com/cli/0.0.1794355255-g66076e/amp-darwin-x64"
      sha256 "6381303ac1b852394ad3a1681d54899bd79046c42a2a18fdbf9eca7271ded780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794355255-g66076e/amp-linux-arm64"
      sha256 "0d5f0e2ca4789e7a12bfe2ce7a56404e80bfa51dd37e0ef28c237388e7797baf"
    else
      url "https://static.ampcode.com/cli/0.0.1794355255-g66076e/amp-linux-x64"
      sha256 "a2937619cdc3a0bfcfb57ab4aa5866b9e314fcc07f6a45d1ba721e261b5c0609"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
