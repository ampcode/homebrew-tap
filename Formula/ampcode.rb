class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781920756-g2385c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781920756-g2385c0/amp-darwin-arm64"
      sha256 "20fab218a853f10c9e702d5c1b568928cd4c4fee2f49e66e2c8e99ad122ba4e8"
    else
      url "https://static.ampcode.com/cli/0.0.1781920756-g2385c0/amp-darwin-x64"
      sha256 "93f1e40353248f9d16f0ce69d7376d304df330ed842210b96f61c53bdb8409c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781920756-g2385c0/amp-linux-arm64"
      sha256 "3f446884d094d68dcdc2ccfbe9d6d6f19e40e1cbeff1f4e3d7b783153ef41069"
    else
      url "https://static.ampcode.com/cli/0.0.1781920756-g2385c0/amp-linux-x64"
      sha256 "5bd26422a280cc09c78578a458f12939a9d01025b281cc2c17ee50e2554788ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
