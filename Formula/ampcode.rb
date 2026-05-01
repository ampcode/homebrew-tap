class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777633956-g2a273f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777633956-g2a273f/amp-darwin-arm64"
      sha256 "fcd8f7160b978f000e97d754b1dbfd48f14b5b32c30cdc411418f2197600fb36"
    else
      url "https://static.ampcode.com/cli/0.0.1777633956-g2a273f/amp-darwin-x64"
      sha256 "16733830740388f0ab1706322dbcc56cfc69c760f937c938876fef489c262981"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777633956-g2a273f/amp-linux-arm64"
      sha256 "384ce4b3f37bc868fa56d9df929f2d56afb53f09aa537b52b9f2679117a5518d"
    else
      url "https://static.ampcode.com/cli/0.0.1777633956-g2a273f/amp-linux-x64"
      sha256 "a322ca958b61df3cb85abb23fd96e66d4b282b461900b4cd0122a5e002218281"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
