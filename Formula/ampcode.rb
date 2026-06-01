class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780273161-g9c84ba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780273161-g9c84ba/amp-darwin-arm64"
      sha256 "0305fbd9ad0f24ea542efe191a7df55543f9b35b67f7e820ec8d3c2c9a20e9f7"
    else
      url "https://static.ampcode.com/cli/0.0.1780273161-g9c84ba/amp-darwin-x64"
      sha256 "34295126b8344eb661729fa2aeee54a638f869025ce37654c66905926145ee0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780273161-g9c84ba/amp-linux-arm64"
      sha256 "81d8b28da52fad9e0c5e62cc24a3cb446c99ef0c5e1e7d8dd59f31bacd6f6dd2"
    else
      url "https://static.ampcode.com/cli/0.0.1780273161-g9c84ba/amp-linux-x64"
      sha256 "cc3eebbc10d5334d12534570e61b14279fd6c76d93a8d94ed360033dec047d69"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
