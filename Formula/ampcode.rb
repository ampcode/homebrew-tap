class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775117804-g92fcd4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775117804-g92fcd4/amp-darwin-arm64"
      sha256 "a1cd6b30c5f4e87f2a31a2d85a7922fee7de632e077a488e8a24b33465f392b4"
    else
      url "https://static.ampcode.com/cli/0.0.1775117804-g92fcd4/amp-darwin-x64"
      sha256 "b715c3a85d6cd98c7a68650f1bdb355179c25a3eecef6ffcd2a7e33a42250da2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775117804-g92fcd4/amp-linux-arm64"
      sha256 "554b97dda839f6177b5f98056ef6f0c6a26f7d48899522f1f4aef23049ab7b84"
    else
      url "https://static.ampcode.com/cli/0.0.1775117804-g92fcd4/amp-linux-x64"
      sha256 "6dad37620f4f03f3fc81e33decb2eec72fc5458fbfb0d1f544e7fec8e8700a4c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
