class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773236193-g002e4d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773236193-g002e4d/amp-darwin-arm64"
      sha256 "faaaed8a4b2703df2f2ba8f27d48c6f5ad37db8f33c586d2d56b1ed0bf88642c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773236193-g002e4d/amp-darwin-x64"
      sha256 "b4401628eae89e6f5604fd549a7213d0c6427e0b97ddc2a9b83c063edf258bf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773236193-g002e4d/amp-linux-arm64"
      sha256 "d4e1e71a808ff5a4eedb6b71c2f73e0116ac852e0c9e93c2bf0503c9ede38fc5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773236193-g002e4d/amp-linux-x64"
      sha256 "ea177996750cdad4fda20dd6e980d0fe97a08fc36defb71e3260d78c4016480b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
