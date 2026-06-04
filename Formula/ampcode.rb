class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780605512-ga5182d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780605512-ga5182d/amp-darwin-arm64"
      sha256 "e95444ee1f52f669051a43421dedae2d254cf2181b6f37e023157f4b08ea3fc9"
    else
      url "https://static.ampcode.com/cli/0.0.1780605512-ga5182d/amp-darwin-x64"
      sha256 "4c7abdd24d686782113cf0f9f651a68453a5fd2ff6892991d6ca78120e82e75e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780605512-ga5182d/amp-linux-arm64"
      sha256 "0bad8edb47b6a4e140928e8452cb79fe21a2ffb8d72b069e363c1c9d1ed2d8e4"
    else
      url "https://static.ampcode.com/cli/0.0.1780605512-ga5182d/amp-linux-x64"
      sha256 "78351466ba2ce360008b595b85d789bf3cf4d24be69e10d2d59d38cb91d94e40"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
