class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781961526-g26d931"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781961526-g26d931/amp-darwin-arm64"
      sha256 "53a07c676d30f4ff6f2286fa8f78bdb851ba18dd794c0cd7db2bd7b3441a15e7"
    else
      url "https://static.ampcode.com/cli/0.0.1781961526-g26d931/amp-darwin-x64"
      sha256 "cf4f22f6c2cf10f7f640de510f947ae84bad455a09fa820227a526b70f1ae320"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781961526-g26d931/amp-linux-arm64"
      sha256 "27d57af7a1e3074754e573f9f8b5771757577d5aa5d0035808d049f291f7a5e9"
    else
      url "https://static.ampcode.com/cli/0.0.1781961526-g26d931/amp-linux-x64"
      sha256 "7d5beb286d29ef0d4bebae930d74896dc024b9f8377cc05bf1c31bc7439f577a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
