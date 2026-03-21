class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774080164-g6778d9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774080164-g6778d9/amp-darwin-arm64"
      sha256 "206b26e03627a1a0beb45e422b15708727f1df5f470eca9d6a69cb9a9a9a1fae"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774080164-g6778d9/amp-darwin-x64"
      sha256 "a2c6267aba36cf69f9542ca2444c0e54ee3183a0878647a0653fc80e9a1b98fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774080164-g6778d9/amp-linux-arm64"
      sha256 "4571ffc58ea2e916dabcf5766b0314d869ab0b27e3545e8e70d338fc19c832f2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774080164-g6778d9/amp-linux-x64"
      sha256 "ba0f23e137320afdd1fe1f95ea5cce5c866613e7c28bedad63796f2cfb89217d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
