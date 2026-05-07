class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778158028-g39bfa2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778158028-g39bfa2/amp-darwin-arm64"
      sha256 "74b73394bab037ffa27e1f6e473a3ae73a21fa3fe86e769e0f914499b0328c29"
    else
      url "https://static.ampcode.com/cli/0.0.1778158028-g39bfa2/amp-darwin-x64"
      sha256 "8fb42cf912ceff0128a71d6608a5a474f0442a5de1681ee0f19f74cc2c4f71a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778158028-g39bfa2/amp-linux-arm64"
      sha256 "cae1b701649d23ac9eb5d5f22240a1c696e7829baf04cdaa5a52b5d02ddb552d"
    else
      url "https://static.ampcode.com/cli/0.0.1778158028-g39bfa2/amp-linux-x64"
      sha256 "9a436bf3185e3f4a3259c05cf885e8f6a8db5b55fd46f9a3bfa02cd54575a0e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
