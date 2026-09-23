class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790126705-g941b49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790126705-g941b49/amp-darwin-arm64"
      sha256 "72aa6e107eb6ff8149f3ec324b8abbe9b8e7aff5a6af536379e23fb6cac689c9"
    else
      url "https://static.ampcode.com/cli/0.0.1790126705-g941b49/amp-darwin-x64"
      sha256 "638017e1df3eabd0af065c42980ef7e8b6fc2de0a6dab3b1b60b8816f05a429d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790126705-g941b49/amp-linux-arm64"
      sha256 "e2919dbcd1b0148349e43539860d161a4ad24dd806ac91d7a1bee62d7b5b9165"
    else
      url "https://static.ampcode.com/cli/0.0.1790126705-g941b49/amp-linux-x64"
      sha256 "7e89361dfb52fa83be828d304a6b865c588da394dde314cb36ca56dce5d01298"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
