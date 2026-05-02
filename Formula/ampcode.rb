class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777738351-g401185"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777738351-g401185/amp-darwin-arm64"
      sha256 "4e78986b0eb6c95ffa147f75108b02191eabbc3fd3d24c78e2df10dadc38c065"
    else
      url "https://static.ampcode.com/cli/0.0.1777738351-g401185/amp-darwin-x64"
      sha256 "17e2b4843bec6a3a253f48a6e92c64c1ffd3c6b5b287019afd3df764ce9b8bde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777738351-g401185/amp-linux-arm64"
      sha256 "dcd15c43543d362bfb2d9e350f0382b9dafb14caba248d6a4ebffc2ffa789b8f"
    else
      url "https://static.ampcode.com/cli/0.0.1777738351-g401185/amp-linux-x64"
      sha256 "2383e2421fa7aae3937361e0c5f6f113ced74fc678437e73a6c8599c12a54fa5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
