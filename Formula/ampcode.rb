class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780592276-g890982"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780592276-g890982/amp-darwin-arm64"
      sha256 "6d762af415b180ba01c15b32574ce96ba79f5a6f41b79fd1e573784cdc83e7a3"
    else
      url "https://static.ampcode.com/cli/0.0.1780592276-g890982/amp-darwin-x64"
      sha256 "22858091114f8ec09fd6d92c73d20c54fbbb674141a9029e6427b30e8b59045f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780592276-g890982/amp-linux-arm64"
      sha256 "f7dd74cc6a032b889dd08dc8a6d316cd5a1e374c62ee8bf958004416782a2974"
    else
      url "https://static.ampcode.com/cli/0.0.1780592276-g890982/amp-linux-x64"
      sha256 "fd5e527e9d1f66b1606803d97a0c27440a3335ae0029d036713a26b7ed3160fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
