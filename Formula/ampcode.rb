class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774963753-g9f23e6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774963753-g9f23e6/amp-darwin-arm64"
      sha256 "866ba62d0422556c918871a0d57906373dc5a609ac5c28316f48780026f93aba"
    else
      url "https://static.ampcode.com/cli/0.0.1774963753-g9f23e6/amp-darwin-x64"
      sha256 "721b0264dc83d6adba7abb4b22c83cb86b90216e8f3494ef12f5da952ce03121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774963753-g9f23e6/amp-linux-arm64"
      sha256 "e0e59a35580ffd3f2986cd55f2d670e452601e43025b7deaa611f2b1b0f556a6"
    else
      url "https://static.ampcode.com/cli/0.0.1774963753-g9f23e6/amp-linux-x64"
      sha256 "5dbc243732ec132a32cda9b83cc11c2b36443879a568d6a6c8b61fc2f3016b39"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
