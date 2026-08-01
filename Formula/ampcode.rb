class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785615453-g24ff49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785615453-g24ff49/amp-darwin-arm64"
      sha256 "34a6262bf136618e37c2b7abfd173855b060e89099fbc2097d973fdebb103043"
    else
      url "https://static.ampcode.com/cli/0.0.1785615453-g24ff49/amp-darwin-x64"
      sha256 "dceeeb1a82f2796dc8633384f44a4efe79b81a3874d59aed54a0be7172b7123f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785615453-g24ff49/amp-linux-arm64"
      sha256 "a3cb95f737eb6def4f3901fa43165f773ca3b7951d0e0adee1f9bb26a2f3548b"
    else
      url "https://static.ampcode.com/cli/0.0.1785615453-g24ff49/amp-linux-x64"
      sha256 "f71f6808ae9f6644311ffd812a8eaa686f17862dfd5e525e24883c17b52d35d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
