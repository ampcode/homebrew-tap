class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783414941-g212a2a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783414941-g212a2a/amp-darwin-arm64"
      sha256 "38c949d608967dc429ab73b5a7eff6d670d12d59c76e5b638f31e83fa1b9fa07"
    else
      url "https://static.ampcode.com/cli/0.0.1783414941-g212a2a/amp-darwin-x64"
      sha256 "3a91fc0e792c7305b81ce04aed7a5cecd47b969b850a856a4dead27eaf3c3560"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783414941-g212a2a/amp-linux-arm64"
      sha256 "7fbab05f08e7e1e466712efc97ed9316a71bd52be4f69682ca0c97166d6787d0"
    else
      url "https://static.ampcode.com/cli/0.0.1783414941-g212a2a/amp-linux-x64"
      sha256 "f025e9c052ef3c3efc9318de4c12bd4e2fa1493188a80863b5a5192aa3785b9f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
