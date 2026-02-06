class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770351408-gd36e02"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770351408-gd36e02/amp-darwin-arm64"
      sha256 "e20a4b09898f9dc8cd2eb8c257c3dbc843547572a3ef45a0d3b4808b6d8696d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770351408-gd36e02/amp-darwin-x64"
      sha256 "cae03f5ee653ae79d1d619e80d567cb3f01fd3f4befd87ebe891cfd202a0d6d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770351408-gd36e02/amp-linux-arm64"
      sha256 "94e87b44d2a097a01c7aff069e67a9ca0fe97bf9fe435f96bfa816bc49d83305"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770351408-gd36e02/amp-linux-x64"
      sha256 "aac0aa414e53b9891270654ad7282978590e9ca8774bfa73da823a7382ccb45d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
