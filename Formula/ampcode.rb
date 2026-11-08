class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794110442-ga8fc4f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794110442-ga8fc4f/amp-darwin-arm64"
      sha256 "ce195eddf3627b8935a2e0deac7975dc4b700fcd3857bce22353c6728a45d91c"
    else
      url "https://static.ampcode.com/cli/0.0.1794110442-ga8fc4f/amp-darwin-x64"
      sha256 "d8e9bd2b896ea695d6b6a92ed1fe85076b4ceda9bca639cf2906a7b992641469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794110442-ga8fc4f/amp-linux-arm64"
      sha256 "06b59088d5dad5f8449f69defc843506e181d829951100d0975fb3b5e3890388"
    else
      url "https://static.ampcode.com/cli/0.0.1794110442-ga8fc4f/amp-linux-x64"
      sha256 "805083acdbff830e9e834a1ce126b34a8cc72f6c996fe4b775a7d8deab9d99e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
