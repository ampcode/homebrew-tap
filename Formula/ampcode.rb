class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786479162-g7d4a99"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786479162-g7d4a99/amp-darwin-arm64"
      sha256 "abbb8b45e031175377450e0311e3731b455c137979cff7f6c5a50ed6635a3093"
    else
      url "https://static.ampcode.com/cli/0.0.1786479162-g7d4a99/amp-darwin-x64"
      sha256 "d9169f9bdb85db97f20f88b94d4766bd4cbc6c49798cbbdcb9cd73caedf142f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786479162-g7d4a99/amp-linux-arm64"
      sha256 "5be96e39410c5eeb88a45f94564153bfe6acf7dcb11ffd40ec5db49983a1eae6"
    else
      url "https://static.ampcode.com/cli/0.0.1786479162-g7d4a99/amp-linux-x64"
      sha256 "dc67b86bb430b028ef3044707e88bdce49f015ae4b345ab3e235e7484bbe1834"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
