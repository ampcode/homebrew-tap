class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784861024-g94a5aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784861024-g94a5aa/amp-darwin-arm64"
      sha256 "cf97ce4ee700b940106bbb5ec4b6e5fe112ecb86028127fd25fb9ec1a2e7bcd2"
    else
      url "https://static.ampcode.com/cli/0.0.1784861024-g94a5aa/amp-darwin-x64"
      sha256 "2563f374c15c13521a0b982abd30b824f6ea1f1132dca1411c3805343552493c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784861024-g94a5aa/amp-linux-arm64"
      sha256 "27940659b4f9d2bc1d628c0db88301a24963b8f83b8ad1a5e1eface42e6a2a83"
    else
      url "https://static.ampcode.com/cli/0.0.1784861024-g94a5aa/amp-linux-x64"
      sha256 "87826398b5690ce8718bf574fae8fcd161628ad44507b69777a53c9c5dc096e3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
