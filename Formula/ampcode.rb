class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794067235-gf8712b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794067235-gf8712b/amp-darwin-arm64"
      sha256 "6fc674cbb1c32a4ffc15c98587f505562325195f3090bee4b1326ae833c2ede8"
    else
      url "https://static.ampcode.com/cli/0.0.1794067235-gf8712b/amp-darwin-x64"
      sha256 "5294acbe03c4dcd2eb9fb91a52f54c812cc809b8d47975fa1522c59bb3165987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794067235-gf8712b/amp-linux-arm64"
      sha256 "6374ab84d7a861187763243953776aba26ae1c4b75f3d685529e72a264d48aad"
    else
      url "https://static.ampcode.com/cli/0.0.1794067235-gf8712b/amp-linux-x64"
      sha256 "3fab74fc30bd491a1d031ac78fed294043aa0aa5e37c37f0829aa2f5faefe4a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
