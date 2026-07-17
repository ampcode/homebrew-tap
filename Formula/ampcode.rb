class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784319456-g6a2cfc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784319456-g6a2cfc/amp-darwin-arm64"
      sha256 "b1395b68b734e0375953993c22a5aaf7367e88ac0fe2fb845375542abf7fbf49"
    else
      url "https://static.ampcode.com/cli/0.0.1784319456-g6a2cfc/amp-darwin-x64"
      sha256 "fb1aa3ad1e043bbc89c698a1e7a82438d41d3d3dedb74a3d58c85e2dbd5b8170"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784319456-g6a2cfc/amp-linux-arm64"
      sha256 "bfa456857787ed06ce62446392bbafe0dd492d9beae1fe0292768b6fa28fb584"
    else
      url "https://static.ampcode.com/cli/0.0.1784319456-g6a2cfc/amp-linux-x64"
      sha256 "a0d7c5efd3e3fcf8e3d63da3e16bd5cc06010b285d3c40a5abbf1268f283fb41"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
