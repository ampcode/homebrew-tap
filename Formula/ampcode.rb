class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790619338-gabc02d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790619338-gabc02d/amp-darwin-arm64"
      sha256 "d4f7681388799fa915cb50a97baedabcbbc8c798176fb2a591bdc9aa81f4501a"
    else
      url "https://static.ampcode.com/cli/0.0.1790619338-gabc02d/amp-darwin-x64"
      sha256 "877b8770c56b6a8ce95e274ba2381dcad682f33422f6dde44cc93a1c44100a83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790619338-gabc02d/amp-linux-arm64"
      sha256 "2a8e46e8e995d71639d5632ed4826c6fefa654f0957283f4405e08b52c703d66"
    else
      url "https://static.ampcode.com/cli/0.0.1790619338-gabc02d/amp-linux-x64"
      sha256 "ff307ee64c307eda9c264de7be5cb8c74939e80b1d5c55d7537ecee1ddcbafb6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
