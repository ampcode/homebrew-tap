class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772755761-g627c2b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772755761-g627c2b/amp-darwin-arm64"
      sha256 "575fcf0d81293d512dfa6c3359e605fecd1e2dff21598ed2914d9462496e29b5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772755761-g627c2b/amp-darwin-x64"
      sha256 "60a63737514dfc9a451e391ef6df5ef3cb25dd956d6c73c7b04aae36298d95ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772755761-g627c2b/amp-linux-arm64"
      sha256 "381d220712f13d99607ea0808ccde06a46fe47ea13cf350cc5da1d42ad079085"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772755761-g627c2b/amp-linux-x64"
      sha256 "6b5321147205eecb198b47c14324977c09b518f2145228789eb5bc3caca166af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
