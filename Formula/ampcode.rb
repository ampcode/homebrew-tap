class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773832780-g6b0c0e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773832780-g6b0c0e/amp-darwin-arm64"
      sha256 "e4b338de599e5c8b111ee2e02a1deb42fcf08ba640ca3f80aa432fa3570029b6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773832780-g6b0c0e/amp-darwin-x64"
      sha256 "6ab2f27fff99d7b952b5243c560453a7666ed37a2b9f2ef5350036f935aedb3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773832780-g6b0c0e/amp-linux-arm64"
      sha256 "b5e65fb1082a80458d62e21fa09eab5dbeab39c20813ca1e24e9ea5c8ea56f1c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773832780-g6b0c0e/amp-linux-x64"
      sha256 "dffcefdd1763f5730c13ee38c8a4e6a4abd1d92a59817dcc3338d9dcd2b85a1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
