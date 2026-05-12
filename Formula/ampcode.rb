class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778572691-g421eee"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778572691-g421eee/amp-darwin-arm64"
      sha256 "bdebcab81e93dd18319009f80c3df02eae4d06df8ed1d0e71758752939982034"
    else
      url "https://static.ampcode.com/cli/0.0.1778572691-g421eee/amp-darwin-x64"
      sha256 "695e7b6cc9fab46a4efbf589f474f12fd81e2a5c1b7a7bb8ed5b0d53ab6455d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778572691-g421eee/amp-linux-arm64"
      sha256 "936d9f1830bd21bc589dca59768e8485f2c5ff8105d49c81265bd0471054eb20"
    else
      url "https://static.ampcode.com/cli/0.0.1778572691-g421eee/amp-linux-x64"
      sha256 "5cd2e02a188c2629f983ecc2d056194443b65ffbdb778cbf82ebc6e44b56e2f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
