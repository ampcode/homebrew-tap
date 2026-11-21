class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795233642-g42d75f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795233642-g42d75f/amp-darwin-arm64"
      sha256 "a95a664ff75ae84c233c15f4e7d8ad6b21a95adaaf32ad4282d4337dd5479c68"
    else
      url "https://static.ampcode.com/cli/0.0.1795233642-g42d75f/amp-darwin-x64"
      sha256 "e04fe8ed7d12935d994b8b84f5e813fd654d699eed30d2835cf545d8d5d777e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795233642-g42d75f/amp-linux-arm64"
      sha256 "8454d124ee8bd8f43d47f1fa5d47f11d32d28361eaa530f3c0618be082ae2d6a"
    else
      url "https://static.ampcode.com/cli/0.0.1795233642-g42d75f/amp-linux-x64"
      sha256 "f6b4079182cfb8eff249bf2a089dab1b5ff98e984bfc84fc330c608db4b12502"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
