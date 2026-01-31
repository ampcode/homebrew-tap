class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769860901-gb053ee"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769860901-gb053ee/amp-darwin-arm64"
      sha256 "7635481e6bc0c0808980757e8243fe9e16c35bffaa63c2df65f25189288c50d2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769860901-gb053ee/amp-darwin-x64"
      sha256 "73afba0faee2d1565f803ebfe81abbce1c41b6f73fe9dcf49b1353f610989e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769860901-gb053ee/amp-linux-arm64"
      sha256 "78e94d18127bfc8c0eda1a586d41108a29b7a3f90f371261a2408efa56983559"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769860901-gb053ee/amp-linux-x64"
      sha256 "12f9939f658f7d435ac91f247902f251637807a66da338d29bd46e6efa8cce79"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
