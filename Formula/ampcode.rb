class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770494498-g9adfc0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770494498-g9adfc0/amp-darwin-arm64"
      sha256 "cf2e531007f7d37570696222163f1e7c1ca56e5fe068b68c7446113a8c328bf0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770494498-g9adfc0/amp-darwin-x64"
      sha256 "93dd13d4e3306f12db12b867ada4841aa57805045b306911db29b294e9f9508f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770494498-g9adfc0/amp-linux-arm64"
      sha256 "99f3206670dce7319dcff1e56e3cc691e1638e0795b2d5fce0eaebf1a51890af"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770494498-g9adfc0/amp-linux-x64"
      sha256 "9d35356addc342ff146d23c776dc46f5a5edb75429dd2ff5b1e6b225d151fe03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
