class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780942552-g0295b6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780942552-g0295b6/amp-darwin-arm64"
      sha256 "95bb2e20788287a3e317919185b44aacf7f7d1544d8c1baa42bfd6f9f9a72873"
    else
      url "https://static.ampcode.com/cli/0.0.1780942552-g0295b6/amp-darwin-x64"
      sha256 "6fa19c1a7257eeb884cfd4fbd49c7ff170375615cfe2557d9356640beae0dfce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780942552-g0295b6/amp-linux-arm64"
      sha256 "20bd57594518813a186aab7e05bbc488673a6260dd0f77d7a6c7136b1eb6697a"
    else
      url "https://static.ampcode.com/cli/0.0.1780942552-g0295b6/amp-linux-x64"
      sha256 "5e6a20e0c92f5febbab110b0176400c319db261f59f801f8691486c8abc2942a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
