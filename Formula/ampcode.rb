class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769371293-gb173eb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769371293-gb173eb/amp-darwin-arm64"
      sha256 "84a6c029f3be6efac797b312c49809d2bad58844d23ce9db9d20399b7b451f5d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769371293-gb173eb/amp-darwin-x64"
      sha256 "3b3f26eecf2f76c4411af38db93b5274f5f51160a0e2e78d95829dc7e06c8e38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769371293-gb173eb/amp-linux-arm64"
      sha256 "1f524657bff167a089778fdd34eaa3b016a8b5e1b159241057c92986d1bf0220"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769371293-gb173eb/amp-linux-x64"
      sha256 "268dcbb2019cefdec9956d903ea9bccaf1295d1a8ccc08d8124360dbedf100c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
