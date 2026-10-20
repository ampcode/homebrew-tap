class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792483247-gc2739b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792483247-gc2739b/amp-darwin-arm64"
      sha256 "61a62cf08a3837b24e3402ba3a7b014925f275c89b0a4e5226c7bcdeda7ec822"
    else
      url "https://static.ampcode.com/cli/0.0.1792483247-gc2739b/amp-darwin-x64"
      sha256 "d7bec4db2638999c5c0f267eb9bb6b9ef48565159fca30656e1a549a57496b7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792483247-gc2739b/amp-linux-arm64"
      sha256 "d53a6c1f77b127b5f4027f28244494d66386deed482aafea64b24958a2ea8f35"
    else
      url "https://static.ampcode.com/cli/0.0.1792483247-gc2739b/amp-linux-x64"
      sha256 "d97079197e5a7c9e02c4b14c5ce9739943675d8de43f12fc90515057ff8f6204"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
