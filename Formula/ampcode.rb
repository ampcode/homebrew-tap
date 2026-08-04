class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785833597-ge3f010"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785833597-ge3f010/amp-darwin-arm64"
      sha256 "23eba136193d5dc506e6bf5b5185cd171bde36e6f2d3c66abf903755bb6f2a62"
    else
      url "https://static.ampcode.com/cli/0.0.1785833597-ge3f010/amp-darwin-x64"
      sha256 "15d25f49d283f6d96deb635fc3b84548c71a4045caddcde66fbe16036bfba0e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785833597-ge3f010/amp-linux-arm64"
      sha256 "0f596f4d89c6f66237a1abbb63963754d8093cd89788af2a9f9fe9b65d7437a3"
    else
      url "https://static.ampcode.com/cli/0.0.1785833597-ge3f010/amp-linux-x64"
      sha256 "34987921c33fa58c018ef62ba61dc58a62f31e6e72bce279dfc675238bc0fd02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
