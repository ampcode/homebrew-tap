class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783411042-g212a2a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783411042-g212a2a/amp-darwin-arm64"
      sha256 "7ae2cf963c6f75ae65a262b468c4c82a43d6c351c8c2cc0f1f81ff29932255c6"
    else
      url "https://static.ampcode.com/cli/0.0.1783411042-g212a2a/amp-darwin-x64"
      sha256 "1ef77e6edf62a4e1f73fd73a446b107584ae9896458a026f49d0850c8126703a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783411042-g212a2a/amp-linux-arm64"
      sha256 "66cc1789ed50dc4345b3ad1e07e4ecc6aef5aab19d7e7ded868eefb0dc67e6b7"
    else
      url "https://static.ampcode.com/cli/0.0.1783411042-g212a2a/amp-linux-x64"
      sha256 "ebe489cc961b49e27a41b42745833c7eca2010a73b16ba6debbfd4c1b8c34a59"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
