class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774483622-g130df2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774483622-g130df2/amp-darwin-arm64"
      sha256 "6d5e9eddc30beb53b0f6c19cbc527b7c254a3ff323fddd2893d03fcb64618c8f"
    else
      url "https://static.ampcode.com/cli/0.0.1774483622-g130df2/amp-darwin-x64"
      sha256 "1b1763fe7d739a75ff54ec822c885f1aa57a790b43fd9452a492ac18a8aeaf3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774483622-g130df2/amp-linux-arm64"
      sha256 "06437ff4860854ef63f5d7e457dabd8757168601d378a502914b016a79a03b9d"
    else
      url "https://static.ampcode.com/cli/0.0.1774483622-g130df2/amp-linux-x64"
      sha256 "fbbea767e55bf6b4a562fae9e5de9f454ec4252055849a01a2991513d824df2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
