class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773663981-gb81d4f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773663981-gb81d4f/amp-darwin-arm64"
      sha256 "43a30a7020b17c15f61086fc900b6af3fd0648e7b03222d052b70b59cbaa217b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773663981-gb81d4f/amp-darwin-x64"
      sha256 "dc715949c4bc413773c602379ac0a61e3b0e1d2c6c4dae673cee6fc82eb333b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773663981-gb81d4f/amp-linux-arm64"
      sha256 "8b6d6a921e5d0b18c3239e2ef7062fcd8244475d77f27c53fe427e1aadc5164e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773663981-gb81d4f/amp-linux-x64"
      sha256 "73b700a6e365085f5bdb59a7671265134e4932f344842edc5598656501a2760d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
