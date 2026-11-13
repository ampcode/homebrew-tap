class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794571247-g07b20f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794571247-g07b20f/amp-darwin-arm64"
      sha256 "d9a5884e6209afae5b73f7baac712664ba4fa46938c0c5bf4cf6ffdab3daa532"
    else
      url "https://static.ampcode.com/cli/0.0.1794571247-g07b20f/amp-darwin-x64"
      sha256 "88180702f24eed749d768b4acebd668dc1bcbb6c1cdd214bfeb38c1ca6167f94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794571247-g07b20f/amp-linux-arm64"
      sha256 "e4d4f43e8eec1a1de5ccf2c5dc96e7481461b21fa4e90a3801a246b57eba1bb6"
    else
      url "https://static.ampcode.com/cli/0.0.1794571247-g07b20f/amp-linux-x64"
      sha256 "aaaf7740e586271c3e43cdc135926c5257622aa4326ad792964fba2f87e60369"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
