class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789971275-g79d8ed"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789971275-g79d8ed/amp-darwin-arm64"
      sha256 "4173c808634e6f7e25dfcad24c2b6506252daa18b0f16a071dad68e1f51e01c2"
    else
      url "https://static.ampcode.com/cli/0.0.1789971275-g79d8ed/amp-darwin-x64"
      sha256 "589bc6e71bbd71d92a65d4c95634f1b5c0329cf7c22277204ebc782b63ff2dfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789971275-g79d8ed/amp-linux-arm64"
      sha256 "982013fa2732ec316625911d0ec1f60f4004f1307fa99eecfacaa8c1a5fc5d1c"
    else
      url "https://static.ampcode.com/cli/0.0.1789971275-g79d8ed/amp-linux-x64"
      sha256 "c6c1f5b2e51ec0c28eaa0c74bae4d3a4c1af1a974ed07f7f005d227b6f6ac681"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
