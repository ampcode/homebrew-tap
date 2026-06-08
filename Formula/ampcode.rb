class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780908117-g631998"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780908117-g631998/amp-darwin-arm64"
      sha256 "ddb70311a4681f6a3905841ef707a8aa21881a480786c9e9248c71f7d8d8c5a2"
    else
      url "https://static.ampcode.com/cli/0.0.1780908117-g631998/amp-darwin-x64"
      sha256 "e7534b1c7a3c9f68b4de211b5ed048a0dce345b42db897df3de10141a7698077"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780908117-g631998/amp-linux-arm64"
      sha256 "06d329a8f250fca0ae2b8d0a294367f60b161f6bf0d5c7887a5a512ff3b5a531"
    else
      url "https://static.ampcode.com/cli/0.0.1780908117-g631998/amp-linux-x64"
      sha256 "491af9fc306328718e1fa4536cca146a4f45eac9ded91315816dc2570a416fff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
