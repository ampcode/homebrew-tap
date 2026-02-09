class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770667757-g7c5efb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770667757-g7c5efb/amp-darwin-arm64"
      sha256 "1de119ea7457ac9937e556ab33edef3ae207bd7d3971f54b7bc6684519b34d39"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770667757-g7c5efb/amp-darwin-x64"
      sha256 "85c6c1bdd7fb1a66d6c0959f9ca871e379f648797c29f35f7387277a3b61e4c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770667757-g7c5efb/amp-linux-arm64"
      sha256 "020ce9d5999d85a0b4211d3e34552cde74c65af505d8e19ff8613ab08764d963"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770667757-g7c5efb/amp-linux-x64"
      sha256 "d1a0a6dffc46fcfc7eada05bffec63036209ce69d1e041e3119b1a86cf39d10b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
