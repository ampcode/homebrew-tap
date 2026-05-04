class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777853652-gb6f16b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777853652-gb6f16b/amp-darwin-arm64"
      sha256 "544fc420552f1a7f4f5f8ccf36851208d86160eab46456529f5b5dd0fb240ac1"
    else
      url "https://static.ampcode.com/cli/0.0.1777853652-gb6f16b/amp-darwin-x64"
      sha256 "a4b43d3b5cf906b843ccb76ba154bb98963bb8213e2ab2d923b56110e25c6148"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777853652-gb6f16b/amp-linux-arm64"
      sha256 "5deccafe9bbb0d98001099bfb6c700541b426ff6a35dfdabc4af8d37a28caec2"
    else
      url "https://static.ampcode.com/cli/0.0.1777853652-gb6f16b/amp-linux-x64"
      sha256 "b01c957f3363e2a8beb4fd8b66e9e22730a28d43ade628af995c7fad97dffdb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
