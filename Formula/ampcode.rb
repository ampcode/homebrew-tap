class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789660852-g000545"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789660852-g000545/amp-darwin-arm64"
      sha256 "81cb6776bcd8fab0a5d9c5ba91b7a2b3a12ae52efc95650227ebc0526ab5c31e"
    else
      url "https://static.ampcode.com/cli/0.0.1789660852-g000545/amp-darwin-x64"
      sha256 "dd03187b4c385114690df1f71c12bdea5d65da62661a510c46e60310027223cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789660852-g000545/amp-linux-arm64"
      sha256 "6f1377fc8c7235ce725d3ae6654903831cd3fd6b89a15af4a1e35084fd756d5d"
    else
      url "https://static.ampcode.com/cli/0.0.1789660852-g000545/amp-linux-x64"
      sha256 "0adbcb01722057fec3eb62555dfee00d6cc7f0a473248f43a0cc8e6a06de5f92"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
