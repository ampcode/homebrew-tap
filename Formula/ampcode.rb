class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780710655-gd6ebe2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780710655-gd6ebe2/amp-darwin-arm64"
      sha256 "62f99c9470bca000630613f52e641843c9f23eec717f463229dd6b19fb5a32c9"
    else
      url "https://static.ampcode.com/cli/0.0.1780710655-gd6ebe2/amp-darwin-x64"
      sha256 "d019b101f81a35a8c39f880b1cb408bcd2281c8b6d7204ead6ce1fb98432e65f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780710655-gd6ebe2/amp-linux-arm64"
      sha256 "2b18d52d4f1ca8cf15cc6b2b7da8305c24412b822130299f77053f2f8de2dfef"
    else
      url "https://static.ampcode.com/cli/0.0.1780710655-gd6ebe2/amp-linux-x64"
      sha256 "5aea5caa75e3a6bda759d6e2177cc81834452b2730333bddede4b1d9423c982a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
