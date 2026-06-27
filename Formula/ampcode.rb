class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782542697-gd6b6a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782542697-gd6b6a8/amp-darwin-arm64"
      sha256 "3938e33d35234bcebe1a7ba1c579d9859092e6b928de5db129220ee834e86781"
    else
      url "https://static.ampcode.com/cli/0.0.1782542697-gd6b6a8/amp-darwin-x64"
      sha256 "418744cb4f5e98202b4c68e5e83dfc4f35f1d71b24fd21d74c7e7e8916a68bb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782542697-gd6b6a8/amp-linux-arm64"
      sha256 "9f84923baff61a2c7937ab41d6d86d80f74ded584d434093645447cc0faba578"
    else
      url "https://static.ampcode.com/cli/0.0.1782542697-gd6b6a8/amp-linux-x64"
      sha256 "632693cd329e3681e05e3f2b921dd98975c3168fcb8279dde3e882e1f1100305"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
