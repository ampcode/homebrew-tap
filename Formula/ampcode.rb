class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793073650-g23dd39"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793073650-g23dd39/amp-darwin-arm64"
      sha256 "3ba7c9e5813d57364f347ab86c3523c7328c0759638d316b8f2f6ec8c1291c5b"
    else
      url "https://static.ampcode.com/cli/0.0.1793073650-g23dd39/amp-darwin-x64"
      sha256 "7bbed0890da648b66b1da664e6b738148411fa2a1e4d690ebb79d678894d25b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793073650-g23dd39/amp-linux-arm64"
      sha256 "a49513ebfe1b1755577eca2890ddf0ecb78696d849ddcf7b70410e03ee5fd65d"
    else
      url "https://static.ampcode.com/cli/0.0.1793073650-g23dd39/amp-linux-x64"
      sha256 "9a41e682ea04635564462fc7b42c8a2ab4d92dd12964d1579cef89d871af483b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
