class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772741314-g313995"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772741314-g313995/amp-darwin-arm64"
      sha256 "9506805d50dd5c2b42d6035432a20861a0f6a0c0204b5b3c50c3cd0d2a976c1f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772741314-g313995/amp-darwin-x64"
      sha256 "84d28a8c3899bf387605e72c667a1b29bc6a89d37062b8c9658911874b8c2cfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772741314-g313995/amp-linux-arm64"
      sha256 "3026aa67015d7c11525554e2eb91f52b85cad4644bc9c9a4dbf3bc879603e5ad"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772741314-g313995/amp-linux-x64"
      sha256 "edc29e3650e6d00ada0c1da110512895fc701752eaf2811d6617066e453972fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
