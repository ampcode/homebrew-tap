class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779354043-g150a4f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779354043-g150a4f/amp-darwin-arm64"
      sha256 "089a572982f95fdceacc835594605b2975ddc148479095a080864d5c95a9848e"
    else
      url "https://static.ampcode.com/cli/0.0.1779354043-g150a4f/amp-darwin-x64"
      sha256 "cb8d525a82cb70f10d0ed9d10a4d5bcf21bb654b0a4b55b0b9cfa40d7d1187bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779354043-g150a4f/amp-linux-arm64"
      sha256 "a5d53cdd7668969dcf19ee72149f2dae26e93aecb08a521f55392478b44c4dfc"
    else
      url "https://static.ampcode.com/cli/0.0.1779354043-g150a4f/amp-linux-x64"
      sha256 "0008f7923e26f67dc49e8fa232299ee38b952d2322e4d77a09a37924ccb71c18"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
