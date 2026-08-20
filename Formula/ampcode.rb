class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787227443-g56d703"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787227443-g56d703/amp-darwin-arm64"
      sha256 "8e31665b625a36daba67f35dbac4032a1cc8e3f7983e31e4ef97eb7853fb518b"
    else
      url "https://static.ampcode.com/cli/0.0.1787227443-g56d703/amp-darwin-x64"
      sha256 "dd30031350f63980ccacfbfd8f9507f6163ef88b6e3c6be54776ff4098851a6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787227443-g56d703/amp-linux-arm64"
      sha256 "971a76fcb2117efa6d8c21dd2908c1cdf3fc9cb03d20a9465d4703ee708e3c39"
    else
      url "https://static.ampcode.com/cli/0.0.1787227443-g56d703/amp-linux-x64"
      sha256 "697e8116cf96cf272ea8f3d545968c9a5cb2a46162b85cc59fb4c09fc84248b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
