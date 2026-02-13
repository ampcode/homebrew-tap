class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770987421-gb93088"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770987421-gb93088/amp-darwin-arm64"
      sha256 "2d26882b715fac19dc93241f604c4b95856f76a7430f1120d29eff96e6e68469"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770987421-gb93088/amp-darwin-x64"
      sha256 "9a042384bfe3047f8f8b617c4a25f6d63833ca6ee8a5d71077ceb9a649ffe71f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770987421-gb93088/amp-linux-arm64"
      sha256 "10094d6be141307078fcca8849c7c88804feef01bef844fd8497d81327a016cd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770987421-gb93088/amp-linux-x64"
      sha256 "0faca54e63fff3cd36b2d595abad080d52052f437f118ce080d2691b75a4fe5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
