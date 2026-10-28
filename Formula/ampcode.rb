class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793192846-g7d4a7b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793192846-g7d4a7b/amp-darwin-arm64"
      sha256 "9d64eb3eb2e3cd4dcbf1b64433d9f27740df480913537f056a8ed69ab111c383"
    else
      url "https://static.ampcode.com/cli/0.0.1793192846-g7d4a7b/amp-darwin-x64"
      sha256 "6e1ab853727e3e1493f4c45b2f2489a52ee23c4c4a58b6b7335b202ca0ea2e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793192846-g7d4a7b/amp-linux-arm64"
      sha256 "c1491faa8fbfef2489decd9bb8de5250a80f8e204b794e62646f59850dbb74d5"
    else
      url "https://static.ampcode.com/cli/0.0.1793192846-g7d4a7b/amp-linux-x64"
      sha256 "b88980599117fbb677bc3eeec124ca8ac112e0e537c2fcf6f0a5d26013112a5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
