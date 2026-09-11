class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789156837-g39de4c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789156837-g39de4c/amp-darwin-arm64"
      sha256 "643dffa074cdb3720cc42efbe31dc58cff40eaf82988fc17b951e9e97ec238f5"
    else
      url "https://static.ampcode.com/cli/0.0.1789156837-g39de4c/amp-darwin-x64"
      sha256 "0c2b1b074ee6ba140d60d6f5766c7e8b2697e2bd0279a46f30af41e76e614ce1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789156837-g39de4c/amp-linux-arm64"
      sha256 "db3168b76552c9abf2b11a05e717d0a1f41318f11a48087c6aad71ef96b5f5fa"
    else
      url "https://static.ampcode.com/cli/0.0.1789156837-g39de4c/amp-linux-x64"
      sha256 "b8fa4d4ed4d290f39db4d058b20a188ef7871e4a03bab75373c9a334ebc6cca8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
