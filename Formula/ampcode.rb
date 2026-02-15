class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771185692-g48f928"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771185692-g48f928/amp-darwin-arm64"
      sha256 "78dae85c8e081e83ee50c49829e5a2a7fca55cbf7696623f658a4e2b2d6a6613"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771185692-g48f928/amp-darwin-x64"
      sha256 "f8c19b298a3e41fb4ed3e46ea772a274ec8579abbb496ace6e7d29f5637cda5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771185692-g48f928/amp-linux-arm64"
      sha256 "e09e10ba307b78de27d2551e6687e2c3742c0379f2d37e3485d4cca8a6de32f5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771185692-g48f928/amp-linux-x64"
      sha256 "33d8910a63f2fe67de184e81e4738c6ca7491ea513cc2e93e8494376941e2fc4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
