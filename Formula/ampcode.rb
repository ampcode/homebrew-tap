class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772582636-g62d644"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772582636-g62d644/amp-darwin-arm64"
      sha256 "8aefde0d5595d1c7c7326f9ef61453b415b19b266eecde69d3fa195c696628f2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772582636-g62d644/amp-darwin-x64"
      sha256 "7a00ae92e83386eda8bca55786dcbf110cfdc01272b888b71c9652c9392736fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772582636-g62d644/amp-linux-arm64"
      sha256 "252aa7ac83c209df8b859478a168c6e77290a256374940c3523f121dab11d254"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772582636-g62d644/amp-linux-x64"
      sha256 "18f0d07d00ce9045b633836ae6e8194daeb7f0202f4f3a7a725a4de09edf037b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
