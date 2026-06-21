class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782018360-gb046d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782018360-gb046d7/amp-darwin-arm64"
      sha256 "7216e34da15881519c290804702ab5674285f7da7c0adee7825eec009bceee35"
    else
      url "https://static.ampcode.com/cli/0.0.1782018360-gb046d7/amp-darwin-x64"
      sha256 "19ab6f652dc3ec678d995f6531161c3be7ad22fc7bc2568db34b1c052405dfe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782018360-gb046d7/amp-linux-arm64"
      sha256 "1325648b41bbe9e35a455d7df3dbba113cc216f1a3da9321775f6220e6653a28"
    else
      url "https://static.ampcode.com/cli/0.0.1782018360-gb046d7/amp-linux-x64"
      sha256 "7e08cf01f0705c64222dcd0199ab02e91ee8fa90752cc98fbc7334b582cd8635"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
