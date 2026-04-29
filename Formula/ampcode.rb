class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777441721-g50e147"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777441721-g50e147/amp-darwin-arm64"
      sha256 "27e4af043ad2fb237035ae548c8c083260a891520f53f086e6b953ffc1d03aa5"
    else
      url "https://static.ampcode.com/cli/0.0.1777441721-g50e147/amp-darwin-x64"
      sha256 "a5608c3846565d527e2e423df0775997065196fab7a10b07d55546ba398546a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777441721-g50e147/amp-linux-arm64"
      sha256 "e733251d81793750bd6780fb23751508bd7cfdcb0e9eac39df2bdd94b5c3b2f8"
    else
      url "https://static.ampcode.com/cli/0.0.1777441721-g50e147/amp-linux-x64"
      sha256 "f0003e5248ebe4ab0104de4ac3566ca1868e24db211cd5605ca5ebfa931fc3d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
