class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789977627-g00fb3c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789977627-g00fb3c/amp-darwin-arm64"
      sha256 "093408fab3a63579920eb3a7c20f25f62a744c0fc090c68b0d0e65166eb49755"
    else
      url "https://static.ampcode.com/cli/0.0.1789977627-g00fb3c/amp-darwin-x64"
      sha256 "3602a06f56be906bdb18d9d590205a2e6248e003fd546b0949160d2fcfeaf177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789977627-g00fb3c/amp-linux-arm64"
      sha256 "7200158e241aae2583f68fdaf93870cfb86aa522120257b5f01596651d40c5bd"
    else
      url "https://static.ampcode.com/cli/0.0.1789977627-g00fb3c/amp-linux-x64"
      sha256 "19d7397715a29b1fc05a4f0e98e53ca254744d181275e91c2f48925e04ba1796"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
