class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769920891-g4da868"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769920891-g4da868/amp-darwin-arm64"
      sha256 "2b92455aa45dd668b00a31afc95d8dead36fd9a32faebfa3d903af8c60ebe009"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769920891-g4da868/amp-darwin-x64"
      sha256 "a70866f35697d091c15521d3cabb3d80bcc97c1e9ccf9e2289e4c5ee4af5bc19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769920891-g4da868/amp-linux-arm64"
      sha256 "5beb5f50cdd523fb906031dc3ed19ce2ca8358537c4347e398364ebb756decb3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769920891-g4da868/amp-linux-x64"
      sha256 "7b55991a853046b17371c7c773f334d51f4fd294216ee16a8b02b50393c88e4d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
