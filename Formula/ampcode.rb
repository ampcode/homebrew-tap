class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773907698-g6757dd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773907698-g6757dd/amp-darwin-arm64"
      sha256 "9a29544217694e6e55f3ec48379cd241eca257524b379447f0dd5811351dd737"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773907698-g6757dd/amp-darwin-x64"
      sha256 "91a25192be8f226ffb2b17c969fbfd346feff1c39a54cf5fe51716cc5d45a067"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773907698-g6757dd/amp-linux-arm64"
      sha256 "7bde09b1dfeb11f6de79e9831bbc2df046b40f7123007b65526200f8bfd23d4b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773907698-g6757dd/amp-linux-x64"
      sha256 "7cf776ce1bf940c629defc7a2e497affd698b3282b5317ce4a16b62c1a3d1a72"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
