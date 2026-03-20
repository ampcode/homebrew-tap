class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774037043-gf69b11"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774037043-gf69b11/amp-darwin-arm64"
      sha256 "1a85ee1e22a036d6bf67b9ddbf163ec7743a87c83a1add68d6f0f89abafed967"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774037043-gf69b11/amp-darwin-x64"
      sha256 "6be6ff8bd09eeeafa4a9f51fcde8c3930f0995ac80b5e80ff12faf343f1f924a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774037043-gf69b11/amp-linux-arm64"
      sha256 "d63ef56ff883acd54e419080018c0ab70f6f44e6f16f719859143f3ed49cdcee"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774037043-gf69b11/amp-linux-x64"
      sha256 "7eb75363c2dea8b9aba6b11c8f7728df07192cf038b4b1177d10a81ba89b2eee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
