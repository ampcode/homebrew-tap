class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779136106-gd60be3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779136106-gd60be3/amp-darwin-arm64"
      sha256 "2fb83934f567dc674030bc6c6db92d91d5c78883a14747f5026e1e60cfd58c41"
    else
      url "https://static.ampcode.com/cli/0.0.1779136106-gd60be3/amp-darwin-x64"
      sha256 "61e63eb90f38f5042afecfd170ac4195b699a8f230bf6abfdf1daf338d61ef26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779136106-gd60be3/amp-linux-arm64"
      sha256 "286d001e75fb034fcbef94c604b7dca672dd16b497acd58f3c4c194358ff38ae"
    else
      url "https://static.ampcode.com/cli/0.0.1779136106-gd60be3/amp-linux-x64"
      sha256 "7c5dca77524899a66fa8ed813cfe4898682eb9b83744175b19f18b73ae1f1758"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
