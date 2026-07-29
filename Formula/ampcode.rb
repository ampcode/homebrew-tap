class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785301270-g4f08a3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785301270-g4f08a3/amp-darwin-arm64"
      sha256 "f37838dc148ea0040ba6ce377037df6ba77694ed6c42a5c3bf320d89990cddd4"
    else
      url "https://static.ampcode.com/cli/0.0.1785301270-g4f08a3/amp-darwin-x64"
      sha256 "a3711e491e14fdfac281265a057a5356e08d22dea37dc2ed94eb62ffd0d67f1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785301270-g4f08a3/amp-linux-arm64"
      sha256 "0ae63638c50ce0fad1110274d8a30c4f84d5bd3e508d17b059ff4b41805164ce"
    else
      url "https://static.ampcode.com/cli/0.0.1785301270-g4f08a3/amp-linux-x64"
      sha256 "541573ee092371fc00cabcd071a325076b22699aad9777d14481ae8c1f0a26d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
