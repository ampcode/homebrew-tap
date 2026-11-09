class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794182455-g196b1f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794182455-g196b1f/amp-darwin-arm64"
      sha256 "5039391ee4195476956364545962fd99984a6d64a11bfec055a13b36556ac1d4"
    else
      url "https://static.ampcode.com/cli/0.0.1794182455-g196b1f/amp-darwin-x64"
      sha256 "42b24cc332366e6b46e6e2875bc25d7efdaa535ac0a574ac9bc2de0678ce06a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794182455-g196b1f/amp-linux-arm64"
      sha256 "55fd72a59dab68efbf3fc4a38e6e453eaccbd2991e4af9e44ac43c7841a69e0e"
    else
      url "https://static.ampcode.com/cli/0.0.1794182455-g196b1f/amp-linux-x64"
      sha256 "c214f979ce8178eb0501eac44c40eca64fcb145a8fb0bd81a9fbb5d26bee0923"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
