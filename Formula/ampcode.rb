class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774930833-ga819cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774930833-ga819cc/amp-darwin-arm64"
      sha256 "9ad7892285fbd6c3d90c34244d6f858f07a6eb796cf5e9aa8616fb993184cea7"
    else
      url "https://static.ampcode.com/cli/0.0.1774930833-ga819cc/amp-darwin-x64"
      sha256 "edec3bde17b03fc118eca460c49f796273a6510b9a50404f5f2d889112ce791b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774930833-ga819cc/amp-linux-arm64"
      sha256 "c9c2b510794d1df1e941a90293e4d2ef433a10a35cbaf377657ff24e0d4937ed"
    else
      url "https://static.ampcode.com/cli/0.0.1774930833-ga819cc/amp-linux-x64"
      sha256 "a55e0ff53783a4ee756788ad2a751208f79cdc088b7641deadd6af0a7945712b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
