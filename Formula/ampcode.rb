class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770631794-g51e285"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770631794-g51e285/amp-darwin-arm64"
      sha256 "0afb2c4b901f92ca99e691a123a1ce3e21d916de0fbb14d661f61b70efd6cd1c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770631794-g51e285/amp-darwin-x64"
      sha256 "b2973680b80bb8404694e0e99ab62cd5172ac0907153282ccff3c5df502ee341"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770631794-g51e285/amp-linux-arm64"
      sha256 "006f540d56030d2b7f6ca1bcb399d429713a4d05c447ae91d223066c31d58f04"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770631794-g51e285/amp-linux-x64"
      sha256 "fe04731cf6437f863400e9a650b34b2a7e37cb37d46d7a6e477accbafcfdafe9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
