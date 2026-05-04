class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777874715-ga1874a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777874715-ga1874a/amp-darwin-arm64"
      sha256 "070fc5a006a1414ba2043e115d082e2feef16f48d230c8a818a9f5adcf8e67b5"
    else
      url "https://static.ampcode.com/cli/0.0.1777874715-ga1874a/amp-darwin-x64"
      sha256 "5bfce8e7726e0fdd0995a7f1403f11beb65c399f8554e4dcfa7ff520544b378c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777874715-ga1874a/amp-linux-arm64"
      sha256 "dc5742c934def2e3d36df9b052442da201d7a8c17caba68f321c7bbde667a69e"
    else
      url "https://static.ampcode.com/cli/0.0.1777874715-ga1874a/amp-linux-x64"
      sha256 "9bd4d64c893827f8dfc37849077c8d0d5931a28b746abedf5072891da1ecee22"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
