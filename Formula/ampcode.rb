class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771917023-g11cfec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771917023-g11cfec/amp-darwin-arm64"
      sha256 "3d354a2c619a82445423de809c9f86823600cdd43c374f77279e3aca1b04c53a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771917023-g11cfec/amp-darwin-x64"
      sha256 "d1bf362710985f7a9802e698d681c3efcf9d9a0e6a259d7ff56501a191286d49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771917023-g11cfec/amp-linux-arm64"
      sha256 "20df946476343a78cae3128d24db55b77aa5681cfa9814e596de6b4d421ef479"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771917023-g11cfec/amp-linux-x64"
      sha256 "0004f4c180feda91de2a82d18d3beafb0532c9c5587e3e11978dd53c6ee74b0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
