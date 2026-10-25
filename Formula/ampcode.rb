class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792929650-g000512"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792929650-g000512/amp-darwin-arm64"
      sha256 "c1c2dda7420e58d2e04b6f897431272e05ffad4172c0e58a9a40b82e579b12fc"
    else
      url "https://static.ampcode.com/cli/0.0.1792929650-g000512/amp-darwin-x64"
      sha256 "6b9fe555ccaba22ef11791d9ff5bf868a1e213a073a804e468c3b7f0e8e7ab8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792929650-g000512/amp-linux-arm64"
      sha256 "cc8e6dabca8998ccc0b556b96345ca0850a0057055aa69b5a795e98e3e627556"
    else
      url "https://static.ampcode.com/cli/0.0.1792929650-g000512/amp-linux-x64"
      sha256 "e5b724e84137c71af8c762fcc27a63ca341f3ca866498ab7dfd89b1ef0eb56fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
