class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772425871-gc8e938"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772425871-gc8e938/amp-darwin-arm64"
      sha256 "bf43b3618b9250af8b5cdd7ce5761916e58bc1cbfb12d365c9ad7331923619ff"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772425871-gc8e938/amp-darwin-x64"
      sha256 "9b780650bf2602e895907150af52fbf463133f81b1916d4cacf37907daf878c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772425871-gc8e938/amp-linux-arm64"
      sha256 "fdf78c8116352aebd316a0553e306ba8085f5c1367d2b8c6004eb237f667eaf2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772425871-gc8e938/amp-linux-x64"
      sha256 "baa416e06aa7b299fb6b3b21d560d723e51544cf2956ee0be04134a95dbfffdb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
