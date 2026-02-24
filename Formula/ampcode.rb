class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771899236-g12af66"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771899236-g12af66/amp-darwin-arm64"
      sha256 "8c3cbb8a101ab174d658dafa6c306a619b0fa833e874fb29fa050378968e15fc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771899236-g12af66/amp-darwin-x64"
      sha256 "b0a874b110a0f7abed484711cd1012547f781de304a86e084f880b09a2ad242b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771899236-g12af66/amp-linux-arm64"
      sha256 "1497f7fc4019606b63bb26c71657ecb565bc16ea8f51fbc5d59dc88df0b21280"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771899236-g12af66/amp-linux-x64"
      sha256 "f6f3fe2f83dc7644157e020c28f03b26787554d47cc3a7bcc13f39e3112cb1eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
