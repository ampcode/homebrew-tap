class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780803750-g55245f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780803750-g55245f/amp-darwin-arm64"
      sha256 "04c04b82fbf56bbfbfbe1d343705594b9910fe712e3e95a397309b5625728d1f"
    else
      url "https://static.ampcode.com/cli/0.0.1780803750-g55245f/amp-darwin-x64"
      sha256 "91e1254b804144126cba7947ba9d3257e9df04ed67cae9e08ac1a008e59e8ab4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780803750-g55245f/amp-linux-arm64"
      sha256 "32cbb8e7d6d005254183902c375e40ce1ab6a564b908f6321bd07aaada009e0e"
    else
      url "https://static.ampcode.com/cli/0.0.1780803750-g55245f/amp-linux-x64"
      sha256 "ed34aea7f971b9caa2a4be144f1960cc230cb4f36d20a5f8a1a838f5d804036b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
