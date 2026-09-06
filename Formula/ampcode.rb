class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788696031-g14d695"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788696031-g14d695/amp-darwin-arm64"
      sha256 "55845f5de2e85e0c55e4456a54fe0990e03977272d65ee5e6e19ea3863004561"
    else
      url "https://static.ampcode.com/cli/0.0.1788696031-g14d695/amp-darwin-x64"
      sha256 "3438d299b9691db95603aae7d71640edd6555b14eb66fa8b7c76a913ed7f5612"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788696031-g14d695/amp-linux-arm64"
      sha256 "1090415719667e6e2d20a609fe88b26900d998cdeaedad6bec933ff0b42679c4"
    else
      url "https://static.ampcode.com/cli/0.0.1788696031-g14d695/amp-linux-x64"
      sha256 "657c617143c2ab440404599155b8d2f10bdd3f11ba57be32d4ce073dfdb25011"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
