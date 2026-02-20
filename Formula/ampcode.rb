class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771598756-gfaab53"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771598756-gfaab53/amp-darwin-arm64"
      sha256 "075f97719086f4b9fda82a1516d0c93bf4f06792ad54fd2b4446f09741768354"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771598756-gfaab53/amp-darwin-x64"
      sha256 "2d44ae4b2a73b9436df0c41ee88b33732a649cff69af022ce0831058ecca4917"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771598756-gfaab53/amp-linux-arm64"
      sha256 "351a9340c4f893e6cffeaa71914db8517e38e28ec66b6bb3f2eff116d70b69e3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771598756-gfaab53/amp-linux-x64"
      sha256 "f978f1edfae929c388086522cf179f4aa763f3294695c654633923e481b767f3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
