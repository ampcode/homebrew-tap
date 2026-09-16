class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789566678-g555089"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789566678-g555089/amp-darwin-arm64"
      sha256 "70054f12d606c489cadfcf70bfaee156d521491851717ef3dbdff726804c018a"
    else
      url "https://static.ampcode.com/cli/0.0.1789566678-g555089/amp-darwin-x64"
      sha256 "ee912031de20d086cded6948cc6c1d899d84dcee86cc70bb4feb418a0bcb8eaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789566678-g555089/amp-linux-arm64"
      sha256 "bf060b4bfae7888fff8d3e53fb93b941a315f0bc2a9caf4eea7451a0dad1e768"
    else
      url "https://static.ampcode.com/cli/0.0.1789566678-g555089/amp-linux-x64"
      sha256 "47d4f43d89916ec89e3f27d505a7a32e20a66362fd8ddf72e99ddf1a1b937ed3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
