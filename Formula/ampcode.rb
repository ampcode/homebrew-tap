class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773982701-g41d390"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773982701-g41d390/amp-darwin-arm64"
      sha256 "f5f693eb5165abe0a69a669a783fd322597ccb5e072652d8cfea6362d809ad2a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773982701-g41d390/amp-darwin-x64"
      sha256 "cabe67d07c5b8767da1008fd263146e1765e2cf993ad4a970354cb723ca3cf24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773982701-g41d390/amp-linux-arm64"
      sha256 "b559f180e2acf372b76e683b2f8a2a6dcb7da69538494d52886b61a2d5b80487"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773982701-g41d390/amp-linux-x64"
      sha256 "8c192d61c1ee4e4b5a6b1aeada3df50cf126828adc05382a834fff9a9ce43114"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
