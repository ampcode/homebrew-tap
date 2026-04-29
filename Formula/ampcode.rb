class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777436073-g438b52"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777436073-g438b52/amp-darwin-arm64"
      sha256 "8032ef5eb232f835c6e36b8cf60d6d5bfa3c6ece7e6e89e3d073548d5c1b4781"
    else
      url "https://static.ampcode.com/cli/0.0.1777436073-g438b52/amp-darwin-x64"
      sha256 "b75294b8dd7542450778bc067623bc0a90bdf0b49e94dc7c216e6d264483619a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777436073-g438b52/amp-linux-arm64"
      sha256 "6d75521a01d59c6c64814004de8db485ba501aa35de59e05b1a33ccd00c194f0"
    else
      url "https://static.ampcode.com/cli/0.0.1777436073-g438b52/amp-linux-x64"
      sha256 "55004281e3e7fb6478301c0d37b7c1723e9cf6c29dce8ed50c8952c308dad58d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
