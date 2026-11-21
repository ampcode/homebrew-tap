class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795248037-g480079"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795248037-g480079/amp-darwin-arm64"
      sha256 "834e12c694d16c58fae193f88de98f09daf7f17097c57b6c740e3e9111ea59e2"
    else
      url "https://static.ampcode.com/cli/0.0.1795248037-g480079/amp-darwin-x64"
      sha256 "0b76c44b217a3f081335aaa20d0c254d8a1adbd98e6d39d58862046631f8af3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795248037-g480079/amp-linux-arm64"
      sha256 "c270c63545718e2b4cb9c08f5072291d3faba8456fdbc07a58c903b2a8b8b452"
    else
      url "https://static.ampcode.com/cli/0.0.1795248037-g480079/amp-linux-x64"
      sha256 "197eff4107de31533343c610c683bb65fc08de013d8005c7f654da5e09cdc77f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
