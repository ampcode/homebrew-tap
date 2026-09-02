class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788367255-g70055c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788367255-g70055c/amp-darwin-arm64"
      sha256 "3ab27d49cf59067abef821dd1e2bc6cd7167cf04e7e687a0f7f5f05d3f2ad192"
    else
      url "https://static.ampcode.com/cli/0.0.1788367255-g70055c/amp-darwin-x64"
      sha256 "684fb448dc8026e6bb26f500b2bbe1fce9a2797190468c2920296c1b669fe16b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788367255-g70055c/amp-linux-arm64"
      sha256 "17fa7a07ff82066b02db168b2d90ec4927bc86c7513acc6fe994565dd8a6adf4"
    else
      url "https://static.ampcode.com/cli/0.0.1788367255-g70055c/amp-linux-x64"
      sha256 "546708441421587796b654bc4342926b6e522b60318521d0c5fd1b2e6ac6434b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
