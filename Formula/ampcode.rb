class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772481904-gb6b1d9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772481904-gb6b1d9/amp-darwin-arm64"
      sha256 "ed8537b957503518f16355f2cef608843e44757065954a0a88ee77dc9c323572"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772481904-gb6b1d9/amp-darwin-x64"
      sha256 "a1d251b621c44b043a26ef886170953790891157ac804dd4fae876c1aa063a89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772481904-gb6b1d9/amp-linux-arm64"
      sha256 "2e787262bc56f298fc09d0e48356a402bb0cad27c5480b59bf33a76db99fcfd0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772481904-gb6b1d9/amp-linux-x64"
      sha256 "5f062826e509ee6fb8798e644fa5bf0abad453ba02d26ab6391ae93d9c47cc7e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
