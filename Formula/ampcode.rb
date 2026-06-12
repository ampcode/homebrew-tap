class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781229930-g6cef83"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781229930-g6cef83/amp-darwin-arm64"
      sha256 "a9502759f62cad6e84de94347b14107d53fe10faf8d8e5af75b0b1c38132774a"
    else
      url "https://static.ampcode.com/cli/0.0.1781229930-g6cef83/amp-darwin-x64"
      sha256 "a63e5534b5f3b5ebddd8ca9b06a2d60153d6b6aa648b91d7546975eef4877d67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781229930-g6cef83/amp-linux-arm64"
      sha256 "2775f62b492dc0ada2b466310b40947f5c21f25919682191e226de3d5218f3b5"
    else
      url "https://static.ampcode.com/cli/0.0.1781229930-g6cef83/amp-linux-x64"
      sha256 "9b16343c682ce55da2cc2d6b61af65bdd7d2f77cc844a16472ce9a25fb0ab485"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
