class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773721967-g6a26c6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773721967-g6a26c6/amp-darwin-arm64"
      sha256 "f4472efae625981f1596b85cf62372fa940751fa3c64838287da158345854457"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773721967-g6a26c6/amp-darwin-x64"
      sha256 "a65f2d143d7738a4a2e4840d596d118f038e0c23fdd502030f6c571d91cd4b97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773721967-g6a26c6/amp-linux-arm64"
      sha256 "5f62c14753a4c6819199b25d2e6ce5f8e592014b67c31086cadbd3218a13b1bf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773721967-g6a26c6/amp-linux-x64"
      sha256 "1bba02af7c916a0f0c8c568be3f9640be663b8c7d996b211adfd1ac2837396e3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
