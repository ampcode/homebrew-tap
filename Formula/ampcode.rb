class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790769659-g954f35"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790769659-g954f35/amp-darwin-arm64"
      sha256 "bc287093e14ca353a90b660235b810edc55d205b7a85a210f5a6e7e6da887b13"
    else
      url "https://static.ampcode.com/cli/0.0.1790769659-g954f35/amp-darwin-x64"
      sha256 "487064e4365b9bf66bc29686d91c4f2166dd3d936f69e544bee6101d0900eb52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790769659-g954f35/amp-linux-arm64"
      sha256 "9566befb5715ab3fea415137f27ab314f9bccacf82a422187abb37fd95464bcf"
    else
      url "https://static.ampcode.com/cli/0.0.1790769659-g954f35/amp-linux-x64"
      sha256 "c1bf472a98ca72c8312e0544811a46789b3641a7808ba700d33b71178a99b52d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
