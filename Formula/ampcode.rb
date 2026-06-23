class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782223980-gdee513"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782223980-gdee513/amp-darwin-arm64"
      sha256 "d45a2bb5bf01c4d9984b0fd2fbc9612ccdf500838ebd87280b3cce9671bcfc71"
    else
      url "https://static.ampcode.com/cli/0.0.1782223980-gdee513/amp-darwin-x64"
      sha256 "2a513e457a238cd0bece05f9a1e9294cc234d6e70700249aeaa78c4c0a1deb9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782223980-gdee513/amp-linux-arm64"
      sha256 "de1420d244926ade6922fd75babd423d572a6f08e4d0eb02f08b2351f4f79b25"
    else
      url "https://static.ampcode.com/cli/0.0.1782223980-gdee513/amp-linux-x64"
      sha256 "4dabc7698d556e844a6697260c6b3e131876c417306698492b2ecb0edc5fa4c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
