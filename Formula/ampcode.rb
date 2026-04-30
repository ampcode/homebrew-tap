class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777572045-g97f3b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777572045-g97f3b8/amp-darwin-arm64"
      sha256 "48e521853d8f0d24ffedb986808c304ba4635dc4940ca7e91685846b5c117e40"
    else
      url "https://static.ampcode.com/cli/0.0.1777572045-g97f3b8/amp-darwin-x64"
      sha256 "8387b86a597e5fac4b47634b97239d88ad4188ffe0769222dc3b3f5e9d71395d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777572045-g97f3b8/amp-linux-arm64"
      sha256 "89dee1d79c97e11d6a8f197d4d336d7cbc7939f3b8bb8a68d0182f1b365c22f0"
    else
      url "https://static.ampcode.com/cli/0.0.1777572045-g97f3b8/amp-linux-x64"
      sha256 "da261d43fc6845ccae674de93ab2fdd345e1ad35fe305663370674d967cb5809"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
