class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787731854-gc245ff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787731854-gc245ff/amp-darwin-arm64"
      sha256 "318e62dcded48281e227d2f63e9743ec1ff3403cb3c6c08e679f86ee7041eb14"
    else
      url "https://static.ampcode.com/cli/0.0.1787731854-gc245ff/amp-darwin-x64"
      sha256 "073a71628848d7d612c33945a9d22c33833e889adb39b8316f4403d9131b057e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787731854-gc245ff/amp-linux-arm64"
      sha256 "62a7b19604418c2783f5a9fa49fed8f82478e674db646c16651aad2842ff19ea"
    else
      url "https://static.ampcode.com/cli/0.0.1787731854-gc245ff/amp-linux-x64"
      sha256 "bc1e2c0066e04ba021e34732246b8c1bbc169099295ba3a400af33712ce973d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
