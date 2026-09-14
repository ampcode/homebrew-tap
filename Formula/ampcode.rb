class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789401648-g1df9a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789401648-g1df9a1/amp-darwin-arm64"
      sha256 "b6a4f067aa647c55bc2ca92940d85cf97f077a00fec6119cc96c5184aac6a92d"
    else
      url "https://static.ampcode.com/cli/0.0.1789401648-g1df9a1/amp-darwin-x64"
      sha256 "a38546af4d6f34f13907188054bdc2292546303d2d2f92c982275d77b5968b16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789401648-g1df9a1/amp-linux-arm64"
      sha256 "7cb12ecec0884e0de9ea6200fef3137928a1f9b9f0b60195524660b4dca3fa1d"
    else
      url "https://static.ampcode.com/cli/0.0.1789401648-g1df9a1/amp-linux-x64"
      sha256 "bdf1a44183e1def791ea7dc79f5d17a64d5317931ac2aee0e134672337932f60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
