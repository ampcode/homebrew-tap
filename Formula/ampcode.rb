class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776284074-g53a1f8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776284074-g53a1f8/amp-darwin-arm64"
      sha256 "9e09c8cf2d9f9ae54fc78a7961d4356c15533ece6a66878b0173f1c0d54cf727"
    else
      url "https://static.ampcode.com/cli/0.0.1776284074-g53a1f8/amp-darwin-x64"
      sha256 "384c7462d6a74d49068dedd290a103b03f78f8bae226c55d6e4ffa24df4c2c94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776284074-g53a1f8/amp-linux-arm64"
      sha256 "d5b1340a9ed544d610bdfd3bc062b1f351e7fb75d805962e801c192e3a54747a"
    else
      url "https://static.ampcode.com/cli/0.0.1776284074-g53a1f8/amp-linux-x64"
      sha256 "1e09ff585c65c8c8a1ee33f8ef7b9855ddecd307706496040e7f0db63a4aa6e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
