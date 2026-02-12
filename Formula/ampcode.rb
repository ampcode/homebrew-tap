class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770883724-g6b8a77"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770883724-g6b8a77/amp-darwin-arm64"
      sha256 "cd21fef8028a37bde51dbee01b107f345cf80d63e368f40ac4e10ce2fac0ddfe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770883724-g6b8a77/amp-darwin-x64"
      sha256 "8b2d27868a9b52f3406efd2bfdc2505e4e0925cd310233e50c3dfddf3762a291"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770883724-g6b8a77/amp-linux-arm64"
      sha256 "d3a901ecb1660cd80f86d99d73be3373848bfbc0f6bd934b61fe2ba3768c33fb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770883724-g6b8a77/amp-linux-x64"
      sha256 "d5d7b027c2fe614f23163e031ab7bab8717ab576289cf51c58b4e26db6589f2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
