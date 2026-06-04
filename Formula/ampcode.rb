class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780588376-g15856b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780588376-g15856b/amp-darwin-arm64"
      sha256 "3bdbdfd6862d2d21396fc171908862c3ec35753d979c010863fb2cfd452be05c"
    else
      url "https://static.ampcode.com/cli/0.0.1780588376-g15856b/amp-darwin-x64"
      sha256 "d48b395029ec7ac5468ab67555f3d0f238ea99057549b769e354f398d2619f29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780588376-g15856b/amp-linux-arm64"
      sha256 "794c1539f5e42dce80720978ff3ff8b2e51a67374f21d7a65e6c49e998a37f28"
    else
      url "https://static.ampcode.com/cli/0.0.1780588376-g15856b/amp-linux-x64"
      sha256 "f14994697716c67850b23e243d48eefcdb7ee1eda2da5ce3a4fa2e871579536b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
