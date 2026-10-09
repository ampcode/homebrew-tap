class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791532981-gacd0a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791532981-gacd0a1/amp-darwin-arm64"
      sha256 "86cab03f77d9ce124af275a549c8ebeca32518c273172f697336cbfd6d1e904b"
    else
      url "https://static.ampcode.com/cli/0.0.1791532981-gacd0a1/amp-darwin-x64"
      sha256 "fe68080d9901818b3b9a6feb0ebe14b8392a078ebc6005992ebba91aac461bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791532981-gacd0a1/amp-linux-arm64"
      sha256 "9662fce9d838a64d647540d3f34a3e5f7db3874547e13830be4f746ba151256f"
    else
      url "https://static.ampcode.com/cli/0.0.1791532981-gacd0a1/amp-linux-x64"
      sha256 "3cc8b956353c208597b840f7b960bcf96e98880e270b308bcaaf48a937fef6bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
