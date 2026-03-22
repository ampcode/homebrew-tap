class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774154108-geea41d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774154108-geea41d/amp-darwin-arm64"
      sha256 "4ace37b687caccff0abaf28d4959f82b7594f6faf86d1649503800d61a752641"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774154108-geea41d/amp-darwin-x64"
      sha256 "f55d2806aebd39c3de41a853e578dd53f619dffb3bc5e8a63370bd3785b4de81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774154108-geea41d/amp-linux-arm64"
      sha256 "c2723622f7f7f588ade64c99b35ec14d68ad1c3f27016eae3c0edfa200d44dbe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774154108-geea41d/amp-linux-x64"
      sha256 "989a63e4c8f8142d9f5fc0ed5f43a8f9b110c68fe808038d8df93825069f0a86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
