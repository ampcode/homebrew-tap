class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792267246-g1e44a7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792267246-g1e44a7/amp-darwin-arm64"
      sha256 "36adb04d1d53c1113ab06cedf01dc36f74272dc045d47544023fa745a2f1784a"
    else
      url "https://static.ampcode.com/cli/0.0.1792267246-g1e44a7/amp-darwin-x64"
      sha256 "7417c599b440863028889c487d344d0877d9f66d57bf6a8341fa606742fb7179"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792267246-g1e44a7/amp-linux-arm64"
      sha256 "602271db5408d7586b7836597656ee5ebf649cbbe44d711bb38ab3fbb70068b8"
    else
      url "https://static.ampcode.com/cli/0.0.1792267246-g1e44a7/amp-linux-x64"
      sha256 "2845e15fd96a11c2e3cd6aa3c63412183b156cd56bf916060c3a048b2dd41a1d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
