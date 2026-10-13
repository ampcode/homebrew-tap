class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791878731-g2f7fd0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791878731-g2f7fd0/amp-darwin-arm64"
      sha256 "09552029808760301b8d2fe1b0b43bd96a05a5f7e12247ae0fb976a9a3c23719"
    else
      url "https://static.ampcode.com/cli/0.0.1791878731-g2f7fd0/amp-darwin-x64"
      sha256 "88edb65aaf6d4b06536d68da8befc407e4bd49a768cbfcb4b72d8fdf5ed2a827"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791878731-g2f7fd0/amp-linux-arm64"
      sha256 "aa44473f377719efdfe3fd6e72de57eed90679181fecbaca5bffd1e346df4f29"
    else
      url "https://static.ampcode.com/cli/0.0.1791878731-g2f7fd0/amp-linux-x64"
      sha256 "02ce9e442da94cc128f412f036cea7f5679e98b39a5d1f11efb1a4ab2280084d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
