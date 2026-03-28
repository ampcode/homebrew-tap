class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774699422-ga16517"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774699422-ga16517/amp-darwin-arm64"
      sha256 "f0185d44c6366e6696f7b9588cf64c4ef122be7e497768ee644f32f38669ff18"
    else
      url "https://static.ampcode.com/cli/0.0.1774699422-ga16517/amp-darwin-x64"
      sha256 "dbf9defbd94ca4dcc8b681b2fd793aa8fb0451871cd7761d3c9e311787b71abb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774699422-ga16517/amp-linux-arm64"
      sha256 "d9e211c8042a84df414d747e798e9f42080555fb2ec12054b6d4ae4d4f0b7b03"
    else
      url "https://static.ampcode.com/cli/0.0.1774699422-ga16517/amp-linux-x64"
      sha256 "6fea6830a32d4b44733dd31e433a3e41ad2da0a0834e9d52b20532427b34c114"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
