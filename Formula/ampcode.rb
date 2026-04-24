class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777006714-g2207a5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777006714-g2207a5/amp-darwin-arm64"
      sha256 "77647bffa4bc390d6a4ee469346058c9b3fd76053032109733c51950e0167418"
    else
      url "https://static.ampcode.com/cli/0.0.1777006714-g2207a5/amp-darwin-x64"
      sha256 "cb504a43760e672c9c587c38e92ecf3ff8e2e95abb2c3b20273c51ace52690ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777006714-g2207a5/amp-linux-arm64"
      sha256 "9a938a1c358b885cf3715ef201b0cef7c8e4edf01dee037692c9cc458849e427"
    else
      url "https://static.ampcode.com/cli/0.0.1777006714-g2207a5/amp-linux-x64"
      sha256 "eec65a923118c4fecd9fae8735321446d0ad648585888e5669030bd95c3339f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
