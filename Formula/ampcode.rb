class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793174452-gd75e9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793174452-gd75e9a/amp-darwin-arm64"
      sha256 "3649753ce0e20700f07b3c1dddfd59eb05492501498cf9630640be01e2c20e54"
    else
      url "https://static.ampcode.com/cli/0.0.1793174452-gd75e9a/amp-darwin-x64"
      sha256 "1ed082720a6b1584afddfbb2f23778f78ce49616897acfc230edcd24c551f1c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793174452-gd75e9a/amp-linux-arm64"
      sha256 "260415536655414991cc0423e2958e8a5bce3fee015148953e3fb709673fcdd7"
    else
      url "https://static.ampcode.com/cli/0.0.1793174452-gd75e9a/amp-linux-x64"
      sha256 "3396aa4886a24b399c7a60ba6eb9202687171b6ccb6bd3d39481403ca3502685"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
