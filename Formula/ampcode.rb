class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773662981-gaf758e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773662981-gaf758e/amp-darwin-arm64"
      sha256 "8145cdf6b1b5416f54c74e0508f3046ed386947d894fd8524bf21f490d8cbdc7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773662981-gaf758e/amp-darwin-x64"
      sha256 "6836b2d92e39ec6120a7b08924d84d452b36551edcabe6fbdc8ab626d65c11ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773662981-gaf758e/amp-linux-arm64"
      sha256 "a18371b78b544307f52140682fe6dc244738b6811bd523711ec4425d31fe4453"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773662981-gaf758e/amp-linux-x64"
      sha256 "2581364a3380b5de9f240226db5ce0314d3e4c1cb0781a5c6eeac864c5a7dcee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
