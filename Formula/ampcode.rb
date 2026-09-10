class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789048803-g7d3890"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789048803-g7d3890/amp-darwin-arm64"
      sha256 "f0998bbfb9e1337d1dacdcbd8b6d4dc21278150a91ad20f851d5ca389c2d1412"
    else
      url "https://static.ampcode.com/cli/0.0.1789048803-g7d3890/amp-darwin-x64"
      sha256 "12e147f3be81002a5a17364462a3f49b2c43c450e6a4298a643d86faf8714824"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789048803-g7d3890/amp-linux-arm64"
      sha256 "315e66b69288a66bcc61044a4f7f04257416f67d7901d247c89767c34094f4f7"
    else
      url "https://static.ampcode.com/cli/0.0.1789048803-g7d3890/amp-linux-x64"
      sha256 "ea8283d29919ef12c27c972b117a4b83bdde110d2c5cd75073f706328124faca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
