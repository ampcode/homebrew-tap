class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783626973-gd97022"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783626973-gd97022/amp-darwin-arm64"
      sha256 "f97a3f070b192930e84e8fde6295a3ba64521a6f5767ed06e4479b9c45672874"
    else
      url "https://static.ampcode.com/cli/0.0.1783626973-gd97022/amp-darwin-x64"
      sha256 "cf1555da6219ae32b0d27cbc05a4cf500bbf06fba97f700bc3b1314276bdf302"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783626973-gd97022/amp-linux-arm64"
      sha256 "5e2fddfa2178657d34b6a60c6cd6b8b412199f8823a0aea2c9f7572ac5851090"
    else
      url "https://static.ampcode.com/cli/0.0.1783626973-gd97022/amp-linux-x64"
      sha256 "81fb8345f27c4f9a3e7e7f71ffcbce7093f707697a82684a58dadfd3401fd8ca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
